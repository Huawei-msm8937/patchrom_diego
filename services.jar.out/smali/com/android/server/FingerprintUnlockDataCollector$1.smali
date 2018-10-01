.class Lcom/android/server/FingerprintUnlockDataCollector$1;
.super Ljava/lang/Object;
.source "FingerprintUnlockDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FingerprintUnlockDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FingerprintUnlockDataCollector;


# direct methods
.method constructor <init>(Lcom/android/server/FingerprintUnlockDataCollector;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 219
    .local v6, "currTime":J
    move-wide/from16 v16, v6

    .line 220
    .local v16, "tempTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/FingerprintUnlockDataCollector;->readSyncNode()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/FingerprintUnlockDataCollector;->access$000(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, "syncNode":Ljava/lang/String;
    :goto_0
    sub-long v20, v16, v6

    const-wide/16 v22, 0x3e8

    cmp-long v19, v20, v22

    if-gez v19, :cond_0

    const-string v19, "0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 223
    const-wide/16 v20, 0x32

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/FingerprintUnlockDataCollector;->readSyncNode()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/FingerprintUnlockDataCollector;->access$000(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 224
    :catch_0
    move-exception v8

    .line 225
    .local v8, "e":Ljava/lang/Exception;
    const-string v19, "FpDataCollector"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    .line 232
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 234
    .local v4, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v9, Ljava/io/File;

    sget-object v19, Lcom/android/server/FingerprintUnlockDataCollector;->UNLOCK_LOG_FULL_PATH:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 236
    const-string v19, "FpDataCollector"

    const-string v20, "fpc_unlock doesn\'t exist!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    if-eqz v2, :cond_1

    .line 275
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 277
    :cond_1
    if-eqz v4, :cond_2

    .line 278
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    .end local v9    # "file":Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 280
    .restart local v9    # "file":Ljava/io/File;
    :catch_1
    move-exception v8

    .line 281
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "FpDataCollector"

    const-string v20, "can not close file descriptor!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 242
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n\t\"fingerprintDownTime\":\t\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/FingerprintUnlockDataCollector;->mFingerDownTimeToWrite:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/FingerprintUnlockDataCollector;->access$100(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\",\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\t\"CaptureCompletedTime\":\t\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/FingerprintUnlockDataCollector;->mCaptureCompletedTimeToWrite:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/FingerprintUnlockDataCollector;->access$200(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\",\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\t\"AuthenticatedTime\":\t\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/FingerprintUnlockDataCollector;->mAuthenticatedTimeToWrite:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/FingerprintUnlockDataCollector;->access$300(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\",\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\t\"screenOnTime\":\t\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/FingerprintUnlockDataCollector;->mScreenOnTimeToWrite:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/FingerprintUnlockDataCollector;->access$400(Lcom/android/server/FingerprintUnlockDataCollector;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 247
    .local v18, "timeStr":Ljava/lang/String;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    :try_start_5
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 250
    .local v10, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 251
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v13, "str":Ljava/lang/StringBuilder;
    const-string v15, ""

    .line 253
    .local v15, "temp":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 254
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 266
    .end local v13    # "str":Ljava/lang/StringBuilder;
    .end local v15    # "temp":Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v2, v3

    .line 267
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "timeStr":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v19, "FpDataCollector"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 274
    if-eqz v2, :cond_4

    .line 275
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 277
    :cond_4
    if-eqz v4, :cond_5

    .line 278
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 285
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/FingerprintUnlockDataCollector;->writeSyncNode()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/FingerprintUnlockDataCollector;->access$500(Lcom/android/server/FingerprintUnlockDataCollector;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/FingerprintUnlockDataCollector;->resetTime()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/FingerprintUnlockDataCollector;->access$600(Lcom/android/server/FingerprintUnlockDataCollector;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FingerprintUnlockDataCollector$1;->this$0:Lcom/android/server/FingerprintUnlockDataCollector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/FingerprintUnlockDataCollector;->sendLog()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/FingerprintUnlockDataCollector;->access$700(Lcom/android/server/FingerprintUnlockDataCollector;)V

    goto/16 :goto_2

    .line 247
    .restart local v9    # "file":Ljava/io/File;
    :catchall_0
    move-exception v19

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v19
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 266
    .end local v9    # "file":Ljava/io/File;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 257
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "str":Ljava/lang/StringBuilder;
    .restart local v15    # "temp":Ljava/lang/String;
    .restart local v18    # "timeStr":Ljava/lang/String;
    :cond_6
    :try_start_b
    const-string v19, "}"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 258
    .local v12, "index":I
    add-int/lit8 v19, v12, -0x1

    const-string v20, ","

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    move-object/from16 v0, v18

    invoke-virtual {v13, v12, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 262
    .local v11, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/OutputStreamWriter;

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 263
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 274
    if-eqz v3, :cond_7

    .line 275
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 277
    :cond_7
    if-eqz v5, :cond_8

    .line 278
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_8
    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v2, v3

    .line 282
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 280
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v8

    .line 281
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v19, "FpDataCollector"

    const-string v20, "can not close file descriptor!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v2, v3

    .line 283
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 280
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "index":I
    .end local v13    # "str":Ljava/lang/StringBuilder;
    .end local v15    # "temp":Ljava/lang/String;
    .end local v18    # "timeStr":Ljava/lang/String;
    :catch_5
    move-exception v8

    .line 281
    const-string v19, "FpDataCollector"

    const-string v20, "can not close file descriptor!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 269
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 270
    .local v8, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_6
    :try_start_e
    const-string v19, "FpDataCollector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "(fpc_unlock.json don\'t have a full json data!)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 274
    if-eqz v2, :cond_9

    .line 275
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 277
    :cond_9
    if-eqz v4, :cond_5

    .line 278
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_5

    .line 280
    :catch_7
    move-exception v8

    .line 281
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "FpDataCollector"

    const-string v20, "can not close file descriptor!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 273
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    .line 274
    :goto_7
    if-eqz v2, :cond_a

    .line 275
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 277
    :cond_a
    if-eqz v4, :cond_b

    .line 278
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 282
    :cond_b
    :goto_8
    throw v19

    .line 280
    :catch_8
    move-exception v8

    .line 281
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v20, "FpDataCollector"

    const-string v21, "can not close file descriptor!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 273
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "timeStr":Ljava/lang/String;
    :catchall_2
    move-exception v19

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "index":I
    .restart local v13    # "str":Ljava/lang/StringBuilder;
    .restart local v15    # "temp":Ljava/lang/String;
    :catchall_3
    move-exception v19

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 269
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "index":I
    .end local v13    # "str":Ljava/lang/StringBuilder;
    .end local v15    # "temp":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v8

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "index":I
    .restart local v13    # "str":Ljava/lang/StringBuilder;
    .restart local v15    # "temp":Ljava/lang/String;
    :catch_a
    move-exception v8

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 266
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_b
    move-exception v8

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

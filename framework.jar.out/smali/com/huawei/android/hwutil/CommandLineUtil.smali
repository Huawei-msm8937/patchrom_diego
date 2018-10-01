.class public Lcom/huawei/android/hwutil/CommandLineUtil;
.super Ljava/lang/Object;
.source "CommandLineUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandLineUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addQuoteMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "chrule"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 82
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 83
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 84
    const-string v1, "chmod -R %s %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 98
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 99
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 100
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 101
    const-string v1, "chown %s.%s %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static echo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "wrrule"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 37
    if-nez p2, :cond_1

    .line 38
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 68
    :cond_0
    :goto_0
    return-object v4

    .line 43
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 45
    const-string v4, "CommandLineUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file is not exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 51
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    if-eqz v3, :cond_3

    .line 62
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 68
    :cond_3
    :goto_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 53
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "CommandLineUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write failed to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 60
    if-eqz v2, :cond_0

    .line 62
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v5

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v4, "CommandLineUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write failed to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 60
    if-eqz v2, :cond_0

    .line 62
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 63
    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 62
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 64
    :cond_4
    :goto_5
    throw v4

    .line 63
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    goto :goto_1

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    goto :goto_5

    .line 60
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 56
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 53
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "oldpath"    # Ljava/lang/String;
    .param p2, "newpath"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 148
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 149
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 150
    const-string v1, "ln -s %s %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static mkdir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 113
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 114
    const-string v1, "mkdir -p %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "opath"    # Ljava/lang/String;
    .param p2, "npath"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 127
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 128
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 129
    const-string v1, "mv %s %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static rm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 141
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 142
    const-string v1, "rm -r %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 6
    .param p0, "bool"    # Z
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "cmd1"    # Ljava/lang/String;
    .param p3, "cmd2"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 191
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 192
    .local v2, "str2":[Ljava/lang/String;
    array-length v4, p3

    if-lez v4, :cond_0

    .line 193
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "str1":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    .end local v1    # "str1":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 197
    .restart local v1    # "str1":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v2, v4

    .line 198
    const-string v3, "-c"

    .line 199
    .local v3, "str3":Ljava/lang/String;
    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 200
    const/4 v4, 0x2

    aput-object v1, v2, v4

    .line 201
    invoke-static {p0, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 202
    .local v0, "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "cmd1"    # Ljava/lang/String;
    .param p2, "cmd2"    # [Ljava/lang/Object;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "bool":Z
    invoke-static {v0, p0, p1, p2}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method

.method private static runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "bool"    # Z
    .param p1, "cmd"    # [Ljava/lang/String;

    .prologue
    .line 216
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 217
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 218
    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v1, 0x0

    .line 226
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "process":Ljava/lang/Process;
    :cond_0
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sync(Ljava/lang/String;)Z
    .locals 3
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 176
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 177
    const-string v1, "sync %s"

    invoke-static {p0, v1, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

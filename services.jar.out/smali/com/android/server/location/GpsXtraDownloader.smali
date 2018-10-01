.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mByteCount:I

.field private mHwGpsLogServices:Lcom/android/server/location/IHwGpsLogServices;

.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .locals 9
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "count":I
    const-string v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "server1":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "server2":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 71
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 74
    :cond_2
    const-string v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 76
    const-string v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 81
    :goto_0
    if-nez v1, :cond_4

    .line 82
    const-string v7, "GpsXtraDownloader"

    const-string v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 95
    :goto_1
    return-void

    .line 78
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v7, v1

    .line 88
    :goto_2
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 89
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 92
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 93
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_7
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 23
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v15, "GpsXtraDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Downloading XTRA data from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/location/GpsXtraDownloader;->mByteCount:I

    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, "blockSize":I
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v10, "httpurl":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 140
    .local v6, "conn":Ljava/net/URLConnection;
    const/16 v15, 0xbb8

    invoke-virtual {v6, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 141
    const/16 v15, 0xbb8

    invoke-virtual {v6, v15}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 142
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/location/GpsXtraDownloader;->mByteCount:I

    .line 143
    const-string v15, "GpsXtraDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mByteCount size is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsXtraDownloader;->mByteCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsXtraDownloader;->mByteCount:I

    if-gtz v15, :cond_1

    .line 149
    const/4 v3, 0x0

    .line 213
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v10    # "httpurl":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v3

    .line 144
    :catch_0
    move-exception v9

    .line 145
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    const/4 v3, 0x0

    goto :goto_0

    .line 153
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v6    # "conn":Ljava/net/URLConnection;
    .restart local v10    # "httpurl":Ljava/net/URL;
    :cond_1
    const/4 v7, 0x0

    .line 155
    .local v7, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 156
    const-string v15, "Accept"

    const-string v16, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v15, "x-wap-profile"

    const-string v16, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/16 v15, 0x7530

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 164
    const v15, 0x1d4c0

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 166
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 168
    const-string v15, "GpsXtraDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "the connection timeout:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 172
    .local v13, "statusCode":I
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_2

    .line 173
    const-string v15, "GpsXtraDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HTTP error downloading gps XTRA: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    const/4 v3, 0x0

    .line 209
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v3, 0x0

    .line 180
    .local v3, "body":[B
    :try_start_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .local v11, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 181
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    .local v5, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x400

    new-array v4, v15, [B

    .line 184
    .local v4, "buffer":[B
    :cond_3
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "count":I
    const/4 v15, -0x1

    if-eq v8, v15, :cond_8

    .line 185
    const/4 v15, 0x0

    invoke-virtual {v5, v4, v15, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 186
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xf4240

    cmp-long v15, v18, v20

    if-lez v15, :cond_3

    .line 187
    const-string v15, "GpsXtraDownloader"

    const-string v17, "XTRA file too large"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 188
    const/4 v3, 0x0

    .line 192
    .end local v3    # "body":[B
    if-eqz v11, :cond_4

    if-eqz v16, :cond_6

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    :cond_4
    :goto_1
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 192
    :catch_1
    move-exception v14

    .local v14, "x2":Ljava/lang/Throwable;
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 206
    .end local v4    # "buffer":[B
    .end local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "count":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "statusCode":I
    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v12

    .line 207
    .local v12, "ioe":Ljava/io/IOException;
    :try_start_6
    const-string v15, "GpsXtraDownloader"

    const-string v16, "Error downloading gps XTRA: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    if-eqz v7, :cond_5

    .line 210
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 192
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "count":I
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "statusCode":I
    :cond_6
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 209
    .end local v4    # "buffer":[B
    .end local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "count":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "statusCode":I
    :catchall_0
    move-exception v15

    if-eqz v7, :cond_7

    .line 210
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v15

    .line 191
    .restart local v3    # "body":[B
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "count":I
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "statusCode":I
    :cond_8
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    .line 192
    if-eqz v11, :cond_9

    if-eqz v16, :cond_a

    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 195
    :cond_9
    :goto_2
    :try_start_a
    const-string v15, "GpsXtraDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "the getReadTimeout:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsXtraDownloader;->mByteCount:I

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 199
    const-string v15, "GpsXtraDownloader"

    const-string v16, "lto downloader process ok"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 209
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 192
    :catch_3
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 180
    .end local v4    # "buffer":[B
    .end local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "count":I
    :catch_4
    move-exception v15

    :try_start_c
    throw v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 192
    :catchall_1
    move-exception v16

    move-object/from16 v22, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v22

    :goto_3
    if-eqz v11, :cond_b

    if-eqz v16, :cond_c

    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_b
    :goto_4
    :try_start_e
    throw v15

    :catch_5
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 202
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "count":I
    :cond_d
    const-string v15, "GpsXtraDownloader"

    const-string v16, "lto downloader process error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 203
    const/4 v3, 0x0

    .line 209
    .end local v3    # "body":[B
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 192
    .end local v4    # "buffer":[B
    .end local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "count":I
    .restart local v3    # "body":[B
    :catchall_2
    move-exception v15

    goto :goto_3
.end method

.method downloadXtraData()[B
    .locals 5

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 101
    .local v1, "startIndex":I
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 102
    const/4 v3, 0x0

    .line 128
    :goto_0
    return-object v3

    .line 106
    :cond_0
    if-nez v0, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 111
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 112
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 115
    :cond_1
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v3, v1, :cond_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getNewHwGpsLogService()Lcom/android/server/location/IHwGpsLogServices;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mHwGpsLogServices:Lcom/android/server/location/IHwGpsLogServices;

    .line 120
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mHwGpsLogServices:Lcom/android/server/location/IHwGpsLogServices;

    if-eqz v3, :cond_4

    .line 121
    const/4 v2, 0x1

    .line 122
    .local v2, "xtraStatus":Z
    if-nez v0, :cond_3

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mByteCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 123
    const/4 v2, 0x0

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mHwGpsLogServices:Lcom/android/server/location/IHwGpsLogServices;

    invoke-interface {v3, v2}, Lcom/android/server/location/IHwGpsLogServices;->updateXtraDloadStatus(Z)V

    .end local v2    # "xtraStatus":Z
    :cond_4
    move-object v3, v0

    .line 128
    goto :goto_0
.end method

.class public Landroid/vr/VRManagerService;
.super Landroid/vr/IVRManagerService$Stub;
.source "VRManagerService.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final VR_SOCKET:Ljava/lang/String; = "vr_daemon"


# instance fields
.field private final buf:[B

.field private mContext:Landroid/content/Context;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/vr/IVRManagerService$Stub;-><init>()V

    .line 30
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/vr/VRManagerService;->buf:[B

    .line 35
    iput-object p1, p0, Landroid/vr/VRManagerService;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 40
    iget-object v3, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 56
    :goto_0
    return v2

    .line 46
    :cond_0
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    .line 47
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "vr_daemon"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 49
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 50
    iget-object v3, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/vr/VRManagerService;->mIn:Ljava/io/InputStream;

    .line 51
    iget-object v3, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/vr/VRManagerService;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/vr/VRManagerService;->disconnect()V

    .line 54
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 62
    iget-object v0, p0, Landroid/vr/VRManagerService;->mIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 63
    iget-object v0, p0, Landroid/vr/VRManagerService;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 65
    iput-object v1, p0, Landroid/vr/VRManagerService;->mSocket:Landroid/net/LocalSocket;

    .line 66
    iput-object v1, p0, Landroid/vr/VRManagerService;->mIn:Ljava/io/InputStream;

    .line 67
    iput-object v1, p0, Landroid/vr/VRManagerService;->mOut:Ljava/io/OutputStream;

    .line 68
    return-void
.end method

.method private readFully([BI)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_0
    iget-object v2, p0, Landroid/vr/VRManagerService;->mIn:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "VRManagerService"

    const-string v3, "read exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Landroid/vr/VRManagerService;->disconnect()V

    goto :goto_0
.end method

.method private readReply()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 85
    iget-object v2, p0, Landroid/vr/VRManagerService;->buf:[B

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Landroid/vr/VRManagerService;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget-object v2, p0, Landroid/vr/VRManagerService;->buf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Landroid/vr/VRManagerService;->buf:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 90
    .local v0, "len":I
    if-lt v0, v4, :cond_2

    iget-object v2, p0, Landroid/vr/VRManagerService;->buf:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 91
    :cond_2
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Landroid/vr/VRManagerService;->disconnect()V

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    iget-object v2, p0, Landroid/vr/VRManagerService;->buf:[B

    invoke-direct {p0, v2, v0}, Landroid/vr/VRManagerService;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 97
    goto :goto_0
.end method

.method private setFrontBuffer(Z)Z
    .locals 6
    .param p1, "set"    # Z

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setFrontBuffer"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v3, " 1"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/vr/VRManagerService;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFrontBuffer ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "r":I
    if-eqz v1, :cond_1

    .line 172
    const-string v3, "VRManagerService"

    const-string v4, "setFrontBuffer fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, 0x0

    .line 175
    :goto_1
    return v3

    .line 166
    .end local v1    # "r":I
    .end local v2    # "ret":Ljava/lang/String;
    :cond_0
    const-string v3, " 0"

    goto :goto_0

    .line 175
    .restart local v1    # "r":I
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/vr/VRManagerService;->connect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const-string v2, "VRManagerService"

    const-string v3, "connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-object v1

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/vr/VRManagerService;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    const-string v2, "VRManagerService"

    const-string v3, "writeCommand failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "-1"

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Landroid/vr/VRManagerService;->readReply()I

    move-result v0

    .line 137
    .local v0, "replyLength":I
    if-lez v0, :cond_2

    .line 138
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/vr/VRManagerService;->buf:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 140
    .local v1, "s":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    const-string v1, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "replyLength":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .param p1, "cmdString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 106
    .local v0, "cmd":[B
    array-length v2, v0

    .line 108
    .local v2, "len":I
    if-lt v2, v3, :cond_0

    iget-object v5, p0, Landroid/vr/VRManagerService;->buf:[B

    array-length v5, v5

    if-le v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 122
    :goto_0
    return v3

    .line 112
    :cond_1
    iget-object v5, p0, Landroid/vr/VRManagerService;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 113
    iget-object v5, p0, Landroid/vr/VRManagerService;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 115
    :try_start_0
    iget-object v5, p0, Landroid/vr/VRManagerService;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Landroid/vr/VRManagerService;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    iget-object v5, p0, Landroid/vr/VRManagerService;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "VRManagerService"

    const-string v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Landroid/vr/VRManagerService;->disconnect()V

    move v3, v4

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public getVsync()D
    .locals 10

    .prologue
    .line 148
    iget-object v5, p0, Landroid/vr/VRManagerService;->mContext:Landroid/content/Context;

    const-string v8, "com.huawei.android.permission.VR"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "vsync"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/vr/VRManagerService;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "ret":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 152
    .local v1, "indexOfSpace":I
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "sub":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 155
    const-string v5, "VRManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentVsync ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 161
    :goto_0
    return-wide v6

    .line 158
    :cond_0
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 161
    .local v6, "vsync":D
    goto :goto_0
.end method

.method public setSchedFifo(II)I
    .locals 6
    .param p1, "tid"    # I
    .param p2, "rtPriority"    # I

    .prologue
    .line 189
    iget-object v3, p0, Landroid/vr/VRManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.android.permission.VR"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setSchedFifo"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/vr/VRManagerService;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 198
    const-string v3, "VRManagerService"

    const-string v4, "setSchedFifo fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v3, -0x1

    .line 201
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startFrontBufferDisplay()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Landroid/vr/VRManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.huawei.android.permission.VR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/vr/VRManagerService;->setFrontBuffer(Z)Z

    move-result v0

    return v0
.end method

.method public stopFrontBufferDisplay()Z
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Landroid/vr/VRManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.huawei.android.permission.VR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/vr/VRManagerService;->setFrontBuffer(Z)Z

    move-result v0

    return v0
.end method

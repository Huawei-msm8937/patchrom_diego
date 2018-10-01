.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MAX_THUMB_COUNT:J

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/channels/FileChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mMiniThumbFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    .line 71
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroid/media/MiniThumbFile;->MAX_THUMB_COUNT:J

    .line 157
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 158
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 159
    return-void
.end method

.method private getFileChannel(J)Ljava/nio/channels/FileChannel;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 344
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFileIndex(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method private getFileIndex(J)J
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 339
    iget-wide v2, p0, Landroid/media/MiniThumbFile;->MAX_THUMB_COUNT:J

    div-long v0, p1, v2

    .line 340
    .local v0, "fileindex":J
    return-wide v0
.end method

.method private getFilePos(J)J
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 348
    iget-wide v2, p0, Landroid/media/MiniThumbFile;->MAX_THUMB_COUNT:J

    rem-long v2, p1, v2

    const-wide/16 v4, 0x2710

    mul-long v0, v2, v4

    .line 349
    .local v0, "pos":J
    return-wide v0
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 89
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 92
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 95
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit v3

    return-object v0

    .line 89
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile(J)Ljava/io/RandomAccessFile;
    .locals 13
    .param p1, "id"    # J

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFileIndex(J)J

    move-result-wide v4

    .line 123
    .local v4, "fileindex":J
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/RandomAccessFile;

    .line 124
    .local v6, "miniThumbFile":Ljava/io/RandomAccessFile;
    if-nez v6, :cond_1

    .line 125
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 126
    const/4 v9, 0x4

    invoke-direct {p0, v9, p1, p2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(IJ)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 128
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 130
    const-string v9, "MiniThumbFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create .thumbnails directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "f":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rw"

    invoke-direct {v7, v3, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "miniThumbFile":Ljava/io/RandomAccessFile;
    .local v7, "miniThumbFile":Ljava/io/RandomAccessFile;
    move-object v6, v7

    .line 146
    .end local v7    # "miniThumbFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "miniThumbFile":Ljava/io/RandomAccessFile;
    :goto_0
    if-eqz v6, :cond_1

    .line 147
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 148
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "directory":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    return-object v6

    .line 137
    .restart local v1    # "directory":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v7, v3, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "miniThumbFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "miniThumbFile":Ljava/io/RandomAccessFile;
    move-object v6, v7

    .line 144
    .end local v7    # "miniThumbFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "miniThumbFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 142
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private randomAccessFilePath(IJ)Ljava/lang/String;
    .locals 6
    .param p1, "version"    # I
    .param p2, "id"    # J

    .prologue
    .line 353
    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->getFileIndex(J)J

    move-result-wide v2

    .line 354
    .local v2, "fileindex":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/DCIM/.thumbnails"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/.thumbdata"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .locals 3

    .prologue
    .line 109
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 82
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 83
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 85
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 7

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 164
    .local v3, "key":Ljava/lang/Long;
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/RandomAccessFile;

    .line 165
    .local v4, "miniThumbFile":Ljava/io/RandomAccessFile;
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_1

    .line 169
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 171
    :cond_1
    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v5, "MiniThumbFile"

    const-string v6, "deactivate: IOException!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Long;
    .end local v4    # "miniThumbFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 179
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 180
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getMagic(J)J
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    .line 191
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 193
    .local v8, "r":Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_2

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFilePos(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 197
    .local v2, "pos":J
    const/4 v7, 0x0

    .line 199
    .local v7, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 200
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 204
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x9

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 210
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v4

    if-ne v4, v10, :cond_1

    .line 212
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-ne v4, v9, :cond_1

    .line 214
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 225
    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local v2    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 225
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_1
    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local v2    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 217
    .restart local v2    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v4, "MiniThumbFile"

    const-string v5, "Got exception checking file magic: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 227
    :catch_1
    move-exception v4

    goto :goto_1

    .line 219
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading magic, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 227
    :catch_3
    move-exception v4

    goto :goto_1

    .line 224
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 225
    if-eqz v7, :cond_3

    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 229
    :cond_3
    :goto_2
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 191
    .end local v2    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 227
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    .restart local v8    # "r":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v6

    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_1

    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    :catch_6
    move-exception v5

    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 17
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 294
    .local v14, "r":Ljava/io/RandomAccessFile;
    if-nez v14, :cond_1

    const/16 p3, 0x0

    .line 334
    .end local p3    # "data":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p3

    .line 297
    .restart local p3    # "data":[B
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->getFilePos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 299
    .local v4, "pos":J
    const/4 v11, 0x0

    .line 301
    .local v11, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 303
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 304
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v6, 0x2710

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v11

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 308
    .local v15, "size":I
    const/16 v6, 0xd

    if-le v15, v6, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 311
    .local v9, "flag":B
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 312
    .local v12, "magic":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 314
    .local v10, "length":I
    add-int/lit8 v6, v10, 0xd

    if-lt v15, v6, :cond_2

    if-eqz v10, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v12, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    if-ne v9, v6, :cond_2

    move-object/from16 v0, p3

    array-length v6, v0

    if-lt v6, v10, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v7, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    if-eqz v11, :cond_0

    :try_start_3
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v6

    goto :goto_0

    .line 328
    .end local v9    # "flag":B
    .end local v10    # "length":I
    .end local v12    # "magic":J
    :cond_2
    if-eqz v11, :cond_3

    :try_start_4
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v15    # "size":I
    :cond_3
    :goto_1
    const/16 p3, 0x0

    goto :goto_0

    .line 320
    :catch_1
    move-exception v2

    .line 321
    .local v2, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v6, "MiniThumbFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception when reading thumbnail id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    if-eqz v11, :cond_3

    :try_start_6
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 330
    :catch_2
    move-exception v6

    goto :goto_1

    .line 322
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 324
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v6, "MiniThumbFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got exception when reading thumbnail, id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", disk full or mount read-only? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 328
    if-eqz v11, :cond_3

    :try_start_8
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 330
    :catch_4
    move-exception v6

    goto :goto_1

    .line 327
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    .line 328
    if-eqz v11, :cond_4

    :try_start_9
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 332
    :cond_4
    :goto_2
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 292
    .end local v4    # "pos":J
    .end local v11    # "lock":Ljava/nio/channels/FileLock;
    .end local v14    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 330
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "pos":J
    .restart local v11    # "lock":Ljava/nio/channels/FileLock;
    .restart local v14    # "r":Ljava/io/RandomAccessFile;
    .restart local v15    # "size":I
    :catch_5
    move-exception v6

    goto :goto_1

    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v15    # "size":I
    :catch_6
    move-exception v7

    goto :goto_2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 240
    .local v8, "r":Ljava/io/RandomAccessFile;
    if-nez v8, :cond_1

    .line 281
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->getFilePos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 245
    .local v2, "pos":J
    const/4 v7, 0x0

    .line 247
    .local v7, "lock":Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_3

    .line 248
    :try_start_2
    array-length v4, p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0x2703

    if-le v4, v5, :cond_2

    .line 275
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v4

    goto :goto_0

    .line 252
    :cond_2
    :try_start_4
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 253
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 257
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 260
    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 261
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 262
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    :cond_3
    if-eqz v7, :cond_0

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 277
    :catch_1
    move-exception v4

    goto :goto_0

    .line 265
    :catch_2
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/io/IOException;
    :try_start_6
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 275
    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 279
    :cond_4
    :goto_1
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 238
    .end local v2    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 269
    .restart local v2    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    .restart local v8    # "r":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 271
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 275
    if-eqz v7, :cond_0

    :try_start_a
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 277
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v5

    goto :goto_1
.end method

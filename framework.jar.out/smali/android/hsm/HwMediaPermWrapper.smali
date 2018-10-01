.class public Landroid/hsm/HwMediaPermWrapper;
.super Ljava/lang/Object;
.source "HwMediaPermWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudio:Landroid/hsm/HwAudioPermWrapper;

.field private mCamera:Landroid/hsm/HwCameraPermWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Landroid/hsm/HwMediaPermWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hsm/HwMediaPermWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    .line 32
    iput-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mAudio:Landroid/hsm/HwAudioPermWrapper;

    return-void
.end method

.method private confirmCameraPermissionWithResult()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/hsm/HwCameraPermWrapper;

    invoke-direct {v0}, Landroid/hsm/HwCameraPermWrapper;-><init>()V

    iput-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    invoke-virtual {v0}, Landroid/hsm/HwCameraPermWrapper;->confirmPermissionWithResult()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public confirmCameraPermission()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/hsm/HwCameraPermWrapper;

    invoke-direct {v0}, Landroid/hsm/HwCameraPermWrapper;-><init>()V

    iput-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    invoke-virtual {v0}, Landroid/hsm/HwCameraPermWrapper;->confirmPermission()V

    .line 43
    sget-object v0, Landroid/hsm/HwMediaPermWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCameraPermission, blocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    invoke-virtual {v2}, Landroid/hsm/HwCameraPermWrapper;->isBlocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public confirmMediaPreparePermission()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mAudio:Landroid/hsm/HwAudioPermWrapper;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/hsm/HwAudioPermWrapper;

    invoke-direct {v0}, Landroid/hsm/HwAudioPermWrapper;-><init>()V

    iput-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mAudio:Landroid/hsm/HwAudioPermWrapper;

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mAudio:Landroid/hsm/HwAudioPermWrapper;

    invoke-virtual {v0}, Landroid/hsm/HwAudioPermWrapper;->confirmPermission()V

    .line 73
    :cond_1
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mCamera:Landroid/hsm/HwCameraPermWrapper;

    invoke-virtual {v0}, Landroid/hsm/HwCameraPermWrapper;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mAudio:Landroid/hsm/HwAudioPermWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/hsm/HwMediaPermWrapper;->mAudio:Landroid/hsm/HwAudioPermWrapper;

    invoke-virtual {v0}, Landroid/hsm/HwAudioPermWrapper;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOutputFile(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;JJ)V
    .locals 1
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "offset"    # J
    .param p5, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/hsm/HwMediaPermWrapper;->confirmMediaPreparePermission()Z

    move-result v0

    .line 105
    .local v0, "blocked":Z
    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1, p3, p4, p5, p6}, Landroid/hsm/HwSystemManager;->setOutputFile(Landroid/media/MediaRecorder;JJ)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p6}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0
.end method

.method public setOutputFile(Landroid/media/MediaRecorder;Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/hsm/HwMediaPermWrapper;->confirmMediaPreparePermission()Z

    move-result v6

    .line 118
    .local v6, "blocked":Z
    if-eqz v6, :cond_0

    .line 119
    invoke-static {p1, p3, p4, p5, p6}, Landroid/hsm/HwSystemManager;->setOutputFile(Landroid/media/MediaRecorder;JJ)V

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "rws"

    invoke-direct {v7, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v7, "fos":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)Landroid/view/Surface;
    .locals 3
    .param p1, "sv"    # Landroid/view/Surface;

    .prologue
    .line 86
    :try_start_0
    invoke-direct {p0}, Landroid/hsm/HwMediaPermWrapper;->confirmCameraPermissionWithResult()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 p1, 0x0

    .line 94
    .end local p1    # "sv":Landroid/view/Surface;
    :cond_0
    :goto_0
    return-object p1

    .line 92
    .restart local p1    # "sv":Landroid/view/Surface;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Landroid/hsm/HwMediaPermWrapper;->TAG:Ljava/lang/String;

    const-string v2, "confirm camera permission fail."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

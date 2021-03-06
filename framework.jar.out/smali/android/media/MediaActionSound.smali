.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_FILES:[Ljava/lang/String;

.field private static final SOUND_NOT_LOADED:I = -0x1

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundLoaded:[Z

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/camera_focus.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v1, Landroid/media/MediaActionSound$1;

    invoke-direct {v1, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 102
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 104
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 105
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    .line 107
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundLoaded:[Z

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aput v4, v1, v0

    .line 110
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundLoaded:[Z

    aput-boolean v5, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iput v4, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaActionSound;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaActionSound;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaActionSound;)[Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaActionSound;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundLoaded:[Z

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaActionSound;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaActionSound;

    .prologue
    .line 44
    iget v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/MediaActionSound;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaActionSound;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    return p1
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .param p1, "soundName"    # I

    .prologue
    .line 129
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 133
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .param p1, "soundName"    # I

    .prologue
    .line 170
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 176
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    iget v1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundLoaded:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    iput v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 181
    const-string v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sound has not been loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 224
    :cond_0
    return-void
.end method

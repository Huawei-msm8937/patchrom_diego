.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/VideoView$STCallback;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 91
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 92
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 95
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 96
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 415
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 480
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 494
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 507
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 559
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 614
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 121
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 91
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 92
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 95
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 96
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 415
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 480
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 494
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 507
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 559
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 614
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 135
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/VideoView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Landroid/widget/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 396
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 398
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 399
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 401
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 396
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 213
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 214
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 216
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 217
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 218
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 219
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    .line 220
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 221
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 222
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 799
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureAndLayoutSubtitleWidget()V
    .locals 4

    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/widget/VideoView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 876
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 878
    .local v0, "height":I
    iget-object v2, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    .line 879
    return-void
.end method

.method private openVideo()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 311
    iget-object v7, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v7, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-direct {p0, v8}, Landroid/widget/VideoView;->release(Z)V

    .line 319
    iget-object v7, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 320
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v10, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 323
    :try_start_0
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 326
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 327
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/media/SubtitleController;

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v2, v1, v7, v8}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 329
    .local v2, "controller":Landroid/media/SubtitleController;
    new-instance v7, Landroid/media/WebVttRenderer;

    invoke-direct {v7, v1}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 330
    new-instance v7, Landroid/media/TtmlRenderer;

    invoke-direct {v7, v1}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 331
    new-instance v7, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v7, v1}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 332
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v2, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 334
    iget v7, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-eqz v7, :cond_2

    .line 335
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v8, p0, Landroid/widget/VideoView;->mAudioSession:I

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 340
    :goto_1
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v7}, Landroid/widget/VideoView;->onSTCallbackSetPlayer(Landroid/media/MediaPlayer;)V

    .line 342
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 343
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 344
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 345
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 346
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 347
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 348
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 349
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v10, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 350
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 351
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 352
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 353
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 355
    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .local v6, "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    :try_start_1
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/io/InputStream;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/media/MediaFormat;

    invoke-virtual {v9, v7, v8}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 358
    :catch_0
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-object v7, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v9, 0x385

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 368
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    :catch_1
    move-exception v4

    .line 369
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v7, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 371
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 372
    iget-object v7, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0

    .line 337
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    :cond_2
    :try_start_4
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v7

    iput v7, p0, Landroid/widget/VideoView;->mAudioSession:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 374
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    :catch_2
    move-exception v4

    .line 375
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_5
    iget-object v7, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 377
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 378
    iget-object v7, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0

    .line 366
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x1

    :try_start_6
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 367
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 381
    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    throw v7
.end method

.method private release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 650
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 652
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 653
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 654
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 655
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 656
    if-eqz p1, :cond_0

    .line 657
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 659
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 660
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 662
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 284
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x385

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

.method protected adjustIsBuffering(I)V
    .locals 0
    .param p1, "arg1"    # I

    .prologue
    .line 947
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 861
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 863
    .local v0, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 864
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 865
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 867
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 204
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 822
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-nez v1, :cond_0

    .line 823
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 824
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    .line 825
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 827
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 793
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheState()Z
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 769
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 764
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 926
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method protected isInPlaybackStateOuter()Z
    .locals 1

    .prologue
    .line 975
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 787
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 832
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 834
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 837
    :cond_0
    return-void
.end method

.method protected onBufferingUpdateOuter(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 951
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 841
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 843
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 846
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 683
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 690
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 691
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 693
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 694
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 695
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 719
    :cond_1
    :goto_1
    return v1

    .line 683
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 697
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 698
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 701
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 702
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 704
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 707
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 709
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 711
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 715
    :cond_7
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 719
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 850
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 852
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0}, Landroid/widget/VideoView;->measureAndLayoutSubtitleWidget()V

    .line 855
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 143
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v3

    .line 144
    .local v3, "width":I
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 145
    .local v0, "height":I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v6, :cond_0

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 148
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 149
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 154
    move v3, v5

    .line 155
    move v0, v2

    .line 158
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    .line 160
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 199
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 200
    return-void

    .line 161
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_1
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_0

    .line 163
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0

    .line 165
    :cond_2
    if-ne v4, v7, :cond_3

    .line 167
    move v3, v5

    .line 168
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 169
    if-ne v1, v8, :cond_0

    if-le v0, v2, :cond_0

    .line 171
    move v0, v2

    goto :goto_0

    .line 173
    :cond_3
    if-ne v1, v7, :cond_4

    .line 175
    move v0, v2

    .line 176
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 177
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 179
    move v3, v5

    goto :goto_0

    .line 183
    :cond_4
    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 184
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 185
    if-ne v1, v8, :cond_5

    if-le v0, v2, :cond_5

    .line 187
    move v0, v2

    .line 188
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 190
    :cond_5
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 192
    move v3, v5

    .line 193
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0
.end method

.method protected onSTCallbackSetPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 943
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 666
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 669
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 674
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 675
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 677
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 741
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 744
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 747
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 748
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 208
    invoke-static {p1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 756
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 777
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 779
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 386
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 389
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 390
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 391
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 980
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 588
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 589
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 601
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 602
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 611
    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 612
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 577
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 578
    return-void
.end method

.method public setSTCallback(Landroid/widget/VideoView$STCallback;)V
    .locals 0
    .param p1, "call"    # Landroid/widget/VideoView$STCallback;

    .prologue
    .line 939
    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 3
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    .prologue
    .line 884
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v1, p1, :cond_0

    .line 921
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    .line 889
    .local v0, "attachedToWindow":Z
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_2

    .line 890
    if-eqz v0, :cond_1

    .line 891
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 894
    :cond_1
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 897
    :cond_2
    iput-object p1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    .line 899
    if-eqz p1, :cond_5

    .line 900
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_3

    .line 901
    new-instance v1, Landroid/widget/VideoView$8;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 909
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    .line 910
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 912
    if-eqz v0, :cond_4

    .line 913
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 914
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 920
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    goto :goto_0

    .line 917
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    goto :goto_1
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 231
    return-void
.end method

.method public setVideoScale(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 960
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 240
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 254
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 256
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 257
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 258
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 259
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 732
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 734
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 736
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 737
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 299
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 301
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 302
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 303
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 304
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 305
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 306
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 308
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 752
    return-void
.end method

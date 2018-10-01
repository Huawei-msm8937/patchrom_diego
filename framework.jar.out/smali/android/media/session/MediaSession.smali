.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$Token;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mActive:Z

.field private final mBinder:Landroid/media/session/ISession;

.field private mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private mContext:Landroid/content/Context;

.field private final mController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBitmapSize:I

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/session/MediaSession;->mActive:Z

    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_0
    iput-object p1, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "tag cannot be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 162
    new-instance v2, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v2, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    .line 163
    const-string/jumbo v2, "media_session"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 166
    .local v1, "manager":Landroid/media/session/MediaSessionManager;
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v2

    iput-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 167
    new-instance v2, Landroid/media/session/MediaSession$Token;

    iget-object v3, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v3}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 168
    new-instance v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, p1, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Remote error creating session."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$1000(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPause()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchStop()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchNext()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrevious()V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchFastForward()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchRewind()V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/session/MediaSession;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # J

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSeekTo(J)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/session/MediaSession;Landroid/media/Rating;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/Rating;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/session/MediaSession;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/session/MediaSession;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(I)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/os/ResultReceiver;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPlay()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/session/MediaSession;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # J

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V

    return-void
.end method

.method private dispatchAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 588
    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 589
    return-void
.end method

.method private dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 580
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 581
    return-void
.end method

.method private dispatchFastForward()V
    .locals 1

    .prologue
    .line 564
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 565
    return-void
.end method

.method private dispatchMediaButton(Landroid/content/Intent;)V
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 584
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 585
    return-void
.end method

.method private dispatchNext()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 557
    return-void
.end method

.method private dispatchPause()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 549
    return-void
.end method

.method private dispatchPlay()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 529
    return-void
.end method

.method private dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 532
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 533
    return-void
.end method

.method private dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 536
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 537
    return-void
.end method

.method private dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 540
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 541
    return-void
.end method

.method private dispatchPrevious()V
    .locals 1

    .prologue
    .line 560
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 561
    return-void
.end method

.method private dispatchRate(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 576
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method private dispatchRewind()V
    .locals 1

    .prologue
    .line 568
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 569
    return-void
.end method

.method private dispatchSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 572
    const/16 v0, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 573
    return-void
.end method

.method private dispatchSetVolumeTo(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 592
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 593
    return-void
.end method

.method private dispatchSkipToItem(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 544
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method private dispatchStop()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 553
    return-void
.end method

.method public static isActiveState(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 622
    packed-switch p0, :pswitch_data_0

    .line 632
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 630
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultCb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 600
    new-instance v0, Landroid/media/session/MediaSession$Command;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 601
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 602
    return-void
.end method

.method private postToCallback(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 597
    return-void
.end method

.method private postToCallback(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 606
    return-void
.end method

.method private postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 609
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 613
    :cond_0
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .locals 4
    .param p1, "provider"    # Landroid/media/VolumeProvider;

    .prologue
    .line 514
    iget-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 515
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eq p1, v1, :cond_1

    .line 516
    :cond_0
    const-string v1, "MediaSession"

    const-string v3, "Received update from stale volume provider"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    monitor-exit v2

    .line 525
    :goto_0
    return-void

    .line 519
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :try_start_1
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in notifyVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .prologue
    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1}, Landroid/media/session/ISession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error releasing session: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error sending event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 332
    iget-boolean v1, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-ne v1, p1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setActive(Z)V

    .line 337
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setActive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 185
    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 197
    iget-object v3, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 198
    if-nez p1, :cond_1

    .line 199
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    # getter for: Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    const/4 v4, 0x0

    # setter for: Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;
    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 202
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 203
    monitor-exit v3

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    # getter for: Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    const/4 v4, 0x0

    # setter for: Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;
    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 210
    :cond_2
    if-nez p2, :cond_3

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .end local p2    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    move-object p2, v0

    .line 213
    .end local v0    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    # setter for: Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 214
    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    .line 216
    .local v1, "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 217
    monitor-exit v3

    goto :goto_0

    .end local v1    # "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setExtras."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 247
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaSession()Landroid/media/session/HwMediaSessionManager;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Landroid/media/session/HwMediaSessionManager;->updateTargetInService(Landroid/app/PendingIntent;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setMediaButtonReceiver."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    iget v2, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    invoke-direct {v1, p1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;I)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 431
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 412
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attributes cannot be null for local playback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToLocal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .locals 4
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "volumeProvider may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    :try_start_0
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 306
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    new-instance v1, Landroid/media/session/MediaSession$1;

    invoke-direct {v1, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    invoke-virtual {p1, v1}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    .line 315
    :try_start_1
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/media/session/ISession;->setPlaybackToRemote(II)V

    .line 317
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    :goto_0
    return-void

    .line 306
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToRemote."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/media/session/ISession;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    .line 454
    :goto_1
    return-void

    .line 450
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueue."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueueTitle."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRatingType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in setRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setLaunchPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
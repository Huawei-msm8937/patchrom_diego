.class public Landroid/media/HwMediaRecorderDummy;
.super Ljava/lang/Object;
.source "HwMediaRecorderDummy.java"

# interfaces
.implements Landroid/media/IHwMediaRecorder;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwMediaRecorderDummy"

.field private static mHwMediaRecoder:Landroid/media/IHwMediaRecorder;


# instance fields
.field mAudioService:Landroid/media/IAudioService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/media/HwMediaRecorderDummy;

    invoke-direct {v0}, Landroid/media/HwMediaRecorderDummy;-><init>()V

    sput-object v0, Landroid/media/HwMediaRecorderDummy;->mHwMediaRecoder:Landroid/media/IHwMediaRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/HwMediaRecorderDummy;->mAudioService:Landroid/media/IAudioService;

    .line 27
    return-void
.end method

.method public static getDefault()Landroid/media/IHwMediaRecorder;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/media/HwMediaRecorderDummy;->mHwMediaRecoder:Landroid/media/IHwMediaRecorder;

    return-object v0
.end method


# virtual methods
.method public checkRecordActive()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "HwMediaRecorderDummy"

    const-string v1, "dummy checkRecordActive"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public sendStateChangedIntent(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 34
    const-string v0, "HwMediaRecorderDummy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dummy sendStateChangedIntent, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.class public Landroid/media/HwAudioRecordDummy;
.super Ljava/lang/Object;
.source "HwAudioRecordDummy.java"

# interfaces
.implements Landroid/media/IHwAudioRecord;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwAudioRecordDummy"

.field private static mHwAudioRecoder:Landroid/media/IHwAudioRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/media/HwAudioRecordDummy;

    invoke-direct {v0}, Landroid/media/HwAudioRecordDummy;-><init>()V

    sput-object v0, Landroid/media/HwAudioRecordDummy;->mHwAudioRecoder:Landroid/media/IHwAudioRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getDefault()Landroid/media/IHwAudioRecord;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/media/HwAudioRecordDummy;->mHwAudioRecoder:Landroid/media/IHwAudioRecord;

    return-object v0
.end method


# virtual methods
.method public checkRecordActive()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "HwAudioRecordDummy"

    const-string v1, "dummy checkRecordActive"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public isAudioRecordAllowed()Z
    .locals 2

    .prologue
    .line 37
    const-string v0, "HwAudioRecordDummy"

    const-string v1, "dummy isAudioRecordAllowed "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public sendStateChangedIntent(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 33
    const-string v0, "HwAudioRecordDummy"

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

    .line 34
    return-void
.end method

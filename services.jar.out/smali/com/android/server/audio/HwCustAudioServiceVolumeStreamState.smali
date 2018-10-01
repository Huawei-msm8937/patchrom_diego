.class public Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;
.super Ljava/lang/Object;
.source "HwCustAudioServiceVolumeStreamState.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "HwCustAudioServiceVolumeStreamState"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public applyAllVolumes(ZI)V
    .locals 2
    .param p1, "isMuted"    # Z
    .param p2, "streamType"    # I

    .prologue
    .line 58
    const-string v0, "HwCustAudioServiceVolumeStreamState"

    const-string v1, "applyAllVolumes dummy interface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public isTurnOffAllSound()Z
    .locals 2

    .prologue
    .line 67
    const-string v0, "HwCustAudioServiceVolumeStreamState"

    const-string v1, "isTurnOffAllSound dummy interface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public readSettings(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .prologue
    .line 48
    const-string v0, "HwCustAudioServiceVolumeStreamState"

    const-string v1, "readSettings dummy interface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

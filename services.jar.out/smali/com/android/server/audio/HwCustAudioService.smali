.class public Lcom/android/server/audio/HwCustAudioService;
.super Ljava/lang/Object;
.source "HwCustAudioService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HwCustAudioService"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/audio/HwCustAudioService;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public applyAllVolumes(Lcom/android/server/audio/AudioService$AudioServiceParas;)V
    .locals 0
    .param p1, "asParas"    # Lcom/android/server/audio/AudioService$AudioServiceParas;

    .prologue
    .line 82
    return-void
.end method

.method protected getDtsstatus(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 62
    return-void
.end method

.method public isTurningAllSound()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public readSettings(II)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .prologue
    .line 73
    return-void
.end method

.method protected setDtsStatus()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

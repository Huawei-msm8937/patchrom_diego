.class public Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;
.super Ljava/lang/Object;
.source "AbsAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AbsAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeviceVolumeState"
.end annotation


# instance fields
.field public final mDevice:I

.field public final mDirection:I

.field public final mOldIndex:I

.field public final mstreamType:I

.field final synthetic this$0:Lcom/android/server/audio/AbsAudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AbsAudioService;IIII)V
    .locals 0
    .param p2, "direction"    # I
    .param p3, "device"    # I
    .param p4, "oldIndex"    # I
    .param p5, "type"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;->this$0:Lcom/android/server/audio/AbsAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p2, p0, Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;->mDirection:I

    .line 119
    iput p3, p0, Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;->mDevice:I

    .line 120
    iput p4, p0, Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;->mOldIndex:I

    .line 121
    iput p5, p0, Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;->mstreamType:I

    .line 122
    return-void
.end method

.class public Lcom/android/server/audio/AudioService$AudioServiceParas;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioServiceParas"
.end annotation


# instance fields
.field pAvrcpAbsVolSupported:Z

.field pFullVolumeDevices:I

.field pIndexMap:Landroid/util/SparseIntArray;

.field pIndexMax:I

.field pIsMuted:Z

.field pStreamType:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$VolumeStreamState;Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p2, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 6695
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6696
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->pIsMuted:Z

    .line 6697
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$400(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->pStreamType:I

    .line 6698
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1400(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->pIndexMap:Landroid/util/SparseIntArray;

    .line 6699
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->pIndexMax:I

    .line 6700
    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {p3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->pAvrcpAbsVolSupported:Z

    .line 6701
    iget v0, p3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    iput v0, p0, Lcom/android/server/audio/AudioService$AudioServiceParas;->pFullVolumeDevices:I

    .line 6702
    return-void
.end method

.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private final mIndexMax:I

.field private final mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 4
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 3975
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3967
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 3972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    .line 3977
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 3979
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 3980
    # getter for: Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4000()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 3981
    # getter for: Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3982
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 3984
    const-class v0, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$800(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    .line 3987
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 3989
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 3991
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3992
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 3958
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 3958
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 3958
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Z

    .prologue
    .line 3958
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 3958
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 3958
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 3958
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 4311
    const-string v7, "   Muted: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4312
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 4313
    const-string v7, "   Min: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4314
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4315
    const-string v7, "   Max: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4316
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4317
    const-string v7, "   Current: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4318
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 4319
    if-lez v3, :cond_0

    .line 4320
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4322
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4323
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4324
    if-ne v0, v9, :cond_2

    const-string v1, "default"

    .line 4326
    .local v1, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4327
    const-string v7, " ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4328
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4329
    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4331
    :cond_1
    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4332
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v4, v7, 0xa

    .line 4333
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4324
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4335
    .end local v0    # "device":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4336
    const-string v7, "   Devices: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4337
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    .line 4338
    .local v2, "devices":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    .local v5, "n":I
    move v6, v5

    .line 4341
    .end local v5    # "n":I
    .local v6, "n":I
    :goto_2
    const/4 v7, 0x1

    shl-int v0, v7, v3

    .restart local v0    # "device":I
    if-eq v0, v9, :cond_5

    .line 4342
    and-int v7, v2, v0

    if-eqz v7, :cond_6

    .line 4343
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    if-lez v6, :cond_4

    .line 4344
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4346
    :cond_4
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4348
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_2

    .line 4350
    :cond_5
    return-void

    :cond_6
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_3
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4301
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_1

    .line 4302
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 4307
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 4303
    .restart local p1    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 4304
    :cond_2
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 4146
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 4103
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 4108
    const/4 v3, 0x0

    .line 4110
    .local v3, "isTurnOff":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    if-eqz v4, :cond_0

    .line 4111
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    invoke-virtual {v4}, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;->isTurnOffAllSound()Z

    move-result v3

    .line 4114
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_4

    .line 4115
    :cond_1
    const/4 v2, 0x0

    .line 4119
    .local v2, "index":I
    :goto_0
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v2, v6}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 4122
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4123
    .local v0, "device":I
    if-eq v0, v7, :cond_3

    .line 4124
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_5

    .line 4125
    :cond_2
    const/4 v2, 0x0

    .line 4134
    :goto_2
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v2, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4121
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4117
    .end local v0    # "device":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v2, v4, 0xa

    .restart local v2    # "index":I
    goto :goto_0

    .line 4126
    .restart local v0    # "device":I
    .restart local v1    # "i":I
    :cond_5
    and-int/lit16 v4, v0, 0x380

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    .line 4130
    :cond_7
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v2, v4, 0xa

    goto :goto_2

    .line 4132
    :cond_8
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v2, v4, 0xa

    goto :goto_2

    .line 4138
    .end local v0    # "device":I
    :cond_9
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    if-eqz v4, :cond_a

    .line 4139
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;->applyAllVolumes(ZI)V

    .line 4142
    :cond_a
    monitor-exit v5

    .line 4143
    return-void

    .line 4142
    .end local v1    # "i":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 3
    .param p1, "device"    # I

    .prologue
    .line 4084
    const/4 v1, 0x0

    .line 4086
    .local v1, "isTurnOff":Z
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    if-eqz v2, :cond_0

    .line 4087
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    invoke-virtual {v2}, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;->isTurnOffAllSound()Z

    move-result v1

    .line 4090
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 4091
    :cond_1
    const/4 v0, 0x0

    .line 4098
    .local v0, "index":I
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4100
    return-void

    .line 4092
    .end local v0    # "index":I
    :cond_2
    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v2, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_5

    .line 4094
    :cond_4
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v0, v2, 0xa

    .restart local v0    # "index":I
    goto :goto_0

    .line 4096
    .end local v0    # "index":I
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v0, v2, 0xa

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    .prologue
    .line 4284
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 4286
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v3, v5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 4287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4288
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4289
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4290
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 4292
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4294
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4297
    .end local v0    # "device":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_2
    monitor-exit v4

    .line 4298
    return-void

    .line 4297
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getIndex(I)I
    .locals 5
    .param p1, "device"    # I

    .prologue
    const/4 v4, -0x1

    .line 4204
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4206
    .local v0, "index":I
    if-ne v0, v4, :cond_0

    .line 4208
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 4210
    :cond_0
    monitor-exit v2

    return v0

    .line 4211
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 4215
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    .prologue
    .line 4219
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4017
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 4018
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4021
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 4280
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public mute(Z)V
    .locals 10
    .param p1, "state"    # Z

    .prologue
    .line 4253
    const/4 v7, 0x0

    .line 4254
    .local v7, "changed":Z
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9

    .line 4255
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v0, :cond_0

    .line 4256
    const/4 v7, 0x1

    .line 4257
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 4262
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4269
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4270
    if-eqz v7, :cond_1

    .line 4272
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4273
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4274
    const-string v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4275
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4277
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 4269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .locals 5
    .param p1, "checkOthers"    # Z

    .prologue
    .line 3995
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 3996
    .local v0, "devices":I
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v2, :cond_0

    .line 4012
    :goto_0
    return v0

    .line 3999
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 4000
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 4001
    if-eqz p1, :cond_1

    .line 4003
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;I)V

    .line 4006
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v3, :cond_2

    .line 4007
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 4009
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public readSettings()V
    .locals 13

    .prologue
    const/4 v7, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v8, 0x1

    .line 4025
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9

    .line 4027
    :try_start_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4028
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v8, 0x40000000    # 2.0f

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 4029
    monitor-exit v9

    .line 4078
    :goto_0
    return-void

    .line 4034
    :cond_0
    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v10, v8, :cond_1

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_3

    .line 4036
    :cond_1
    sget-object v7, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v7, v8

    mul-int/lit8 v3, v7, 0xa

    .line 4037
    .local v3, "index":I
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4038
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4039
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4041
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4042
    :try_start_2
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4043
    monitor-exit v9

    goto :goto_0

    .line 4077
    .end local v3    # "index":I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 4041
    .restart local v3    # "index":I
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v7

    .line 4046
    .end local v3    # "index":I
    :cond_3
    const v6, 0x41ffffff    # 31.999998f

    .line 4048
    .local v6, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v6, :cond_a

    .line 4049
    shl-int v1, v8, v2

    .line 4050
    .local v1, "device":I
    and-int v10, v1, v6

    if-nez v10, :cond_5

    .line 4048
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4053
    :cond_5
    xor-int/lit8 v10, v1, -0x1

    and-int/2addr v6, v10

    .line 4056
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v5

    .line 4060
    .local v5, "name":Ljava/lang/String;
    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    const/4 v10, 0x2

    if-ne v1, v10, :cond_7

    move v4, v8

    .line 4061
    .local v4, "isMusicSpeaker":Z
    :goto_3
    if-eq v1, v12, :cond_6

    if-eqz v4, :cond_8

    :cond_6
    sget-object v10, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v11, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v10, v11

    .line 4064
    .local v0, "defaultIndex":I
    :goto_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, -0x2

    invoke-static {v10, v5, v0, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4066
    .restart local v3    # "index":I
    if-ne v3, v7, :cond_9

    .line 4068
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    if-eqz v10, :cond_4

    .line 4069
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVSSCust:Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;

    iget v11, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v10, v11, v1}, Lcom/android/server/audio/HwCustAudioServiceVolumeStreamState;->readSettings(II)V

    goto :goto_2

    .line 4060
    .end local v0    # "defaultIndex":I
    .end local v3    # "index":I
    .end local v4    # "isMusicSpeaker":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .restart local v4    # "isMusicSpeaker":Z
    :cond_8
    move v0, v7

    .line 4061
    goto :goto_4

    .line 4075
    .restart local v0    # "defaultIndex":I
    .restart local v3    # "index":I
    :cond_9
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v11, v3, 0xa

    invoke-direct {p0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v11

    invoke-virtual {v10, v1, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 4077
    .end local v0    # "defaultIndex":I
    .end local v1    # "device":I
    .end local v3    # "index":I
    .end local v4    # "isMusicSpeaker":Z
    .end local v5    # "name":Ljava/lang/String;
    :cond_a
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 8
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 4223
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 4224
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v4

    .line 4227
    .local v4, "srcStreamType":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 4228
    .local v2, "index":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    .line 4229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 4230
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4233
    :cond_0
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 4234
    .local v3, "srcMap":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 4235
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4236
    .local v0, "device":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4237
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    .line 4239
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 4234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4241
    .end local v0    # "device":I
    :cond_1
    monitor-exit v6

    .line 4242
    return-void

    .line 4241
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "srcMap":Landroid/util/SparseIntArray;
    .end local v4    # "srcStreamType":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setAllIndexesToMax()V
    .locals 5

    .prologue
    .line 4245
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4247
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 4246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4249
    :cond_0
    monitor-exit v2

    .line 4250
    return-void

    .line 4249
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 4150
    const/4 v0, 0x0

    .line 4152
    .local v0, "changed":Z
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4153
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 4154
    .local v3, "oldIndex":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 4155
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4156
    :try_start_1
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4157
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4159
    :cond_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4160
    :try_start_2
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4162
    if-eq v3, p1, :cond_2

    move v0, v1

    .line 4163
    :goto_0
    if-eqz v0, :cond_4

    .line 4167
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v9}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    if-ne p2, v8, :cond_3

    .line 4168
    .local v1, "currentDevice":Z
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 4169
    .local v2, "numStreamTypes":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "streamType":I
    :goto_2
    if-ltz v5, :cond_4

    .line 4170
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)[I

    move-result-object v6

    aget v6, v6, v5

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v8, :cond_1

    .line 4172
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v8, v5}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;III)I

    move-result v4

    .line 4173
    .local v4, "scaledIndex":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6, v4, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 4174
    if-eqz v1, :cond_1

    .line 4175
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v5}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    invoke-virtual {v6, v4, v8, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4169
    .end local v4    # "scaledIndex":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 4159
    .end local v1    # "currentDevice":Z
    .end local v2    # "numStreamTypes":I
    .end local v5    # "streamType":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 4181
    .end local v3    # "oldIndex":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .restart local v3    # "oldIndex":I
    :cond_2
    move v0, v6

    .line 4162
    goto :goto_0

    :cond_3
    move v1, v6

    .line 4167
    goto :goto_1

    .line 4181
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4182
    if-eqz v0, :cond_7

    .line 4183
    add-int/lit8 v6, v3, 0x5

    div-int/lit8 v3, v6, 0xa

    .line 4184
    add-int/lit8 v6, p1, 0x5

    div-int/lit8 p1, v6, 0xa

    .line 4186
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)[I

    move-result-object v6

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v7, :cond_6

    .line 4187
    if-nez p3, :cond_5

    .line 4188
    const-string v6, "AudioService"

    const-string v7, "No caller for volume_changed event"

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4190
    :cond_5
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v7, v7, 0xa

    invoke-static {v6, v3, p1, v7, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 4194
    :cond_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4195
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v7, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4196
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)[I

    move-result-object v8

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4198
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4200
    :cond_7
    return v0
.end method

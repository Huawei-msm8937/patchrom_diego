.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "MediaActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/media/MediaActionSound;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 195
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    # getter for: Landroid/media/MediaActionSound;->mSoundIds:[I
    invoke-static {v0}, Landroid/media/MediaActionSound;->access$000(Landroid/media/MediaActionSound;)[I

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 196
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    # getter for: Landroid/media/MediaActionSound;->mSoundIds:[I
    invoke-static {v0}, Landroid/media/MediaActionSound;->access$000(Landroid/media/MediaActionSound;)[I

    move-result-object v0

    aget v0, v0, v7

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    # getter for: Landroid/media/MediaActionSound;->mSoundLoaded:[Z
    invoke-static {v0}, Landroid/media/MediaActionSound;->access$100(Landroid/media/MediaActionSound;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v7

    .line 195
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 202
    :cond_1
    if-nez p3, :cond_3

    .line 203
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    # getter for: Landroid/media/MediaActionSound;->mSoundIdToPlay:I
    invoke-static {v0}, Landroid/media/MediaActionSound;->access$200(Landroid/media/MediaActionSound;)I

    move-result v0

    if-ne v0, p2, :cond_2

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    .line 204
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 205
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    const/4 v1, -0x1

    # setter for: Landroid/media/MediaActionSound;->mSoundIdToPlay:I
    invoke-static {v0, v1}, Landroid/media/MediaActionSound;->access$202(Landroid/media/MediaActionSound;I)I

    .line 211
    :cond_2
    :goto_1
    return-void

    .line 208
    :cond_3
    const-string v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load sound for playback (status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

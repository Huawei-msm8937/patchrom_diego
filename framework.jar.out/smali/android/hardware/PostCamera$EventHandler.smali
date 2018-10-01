.class Landroid/hardware/PostCamera$EventHandler;
.super Landroid/os/Handler;
.source "PostCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/PostCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/PostCamera;

.field final synthetic this$0:Landroid/hardware/PostCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/PostCamera;Landroid/hardware/PostCamera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/PostCamera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 77
    iput-object p1, p0, Landroid/hardware/PostCamera$EventHandler;->this$0:Landroid/hardware/PostCamera;

    .line 78
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    iput-object p2, p0, Landroid/hardware/PostCamera$EventHandler;->mCamera:Landroid/hardware/PostCamera;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    const-string v0, "PostCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post call back, msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 101
    const-string v0, "PostCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :sswitch_0
    iget-object v0, p0, Landroid/hardware/PostCamera$EventHandler;->this$0:Landroid/hardware/PostCamera;

    # getter for: Landroid/hardware/PostCamera;->mJpegCallback:Landroid/hardware/PostCamera$PostPictureCallback;
    invoke-static {v0}, Landroid/hardware/PostCamera;->access$000(Landroid/hardware/PostCamera;)Landroid/hardware/PostCamera$PostPictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/hardware/PostCamera$EventHandler;->this$0:Landroid/hardware/PostCamera;

    # getter for: Landroid/hardware/PostCamera;->mJpegCallback:Landroid/hardware/PostCamera$PostPictureCallback;
    invoke-static {v0}, Landroid/hardware/PostCamera;->access$000(Landroid/hardware/PostCamera;)Landroid/hardware/PostCamera$PostPictureCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Landroid/hardware/PostCamera$EventHandler;->mCamera:Landroid/hardware/PostCamera;

    invoke-interface {v1, v0, v2}, Landroid/hardware/PostCamera$PostPictureCallback;->onPictureTaken([BLandroid/hardware/PostCamera;)V

    goto :goto_0

    .line 94
    :sswitch_1
    const-string v0, "PostCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Landroid/hardware/PostCamera$EventHandler;->this$0:Landroid/hardware/PostCamera;

    # getter for: Landroid/hardware/PostCamera;->mErrorCallback:Landroid/hardware/PostCamera$PostErrorCallback;
    invoke-static {v0}, Landroid/hardware/PostCamera;->access$100(Landroid/hardware/PostCamera;)Landroid/hardware/PostCamera$PostErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/hardware/PostCamera$EventHandler;->this$0:Landroid/hardware/PostCamera;

    # getter for: Landroid/hardware/PostCamera;->mErrorCallback:Landroid/hardware/PostCamera$PostErrorCallback;
    invoke-static {v0}, Landroid/hardware/PostCamera;->access$100(Landroid/hardware/PostCamera;)Landroid/hardware/PostCamera$PostErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/PostCamera$EventHandler;->mCamera:Landroid/hardware/PostCamera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/PostCamera$PostErrorCallback;->onError(ILandroid/hardware/PostCamera;)V

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

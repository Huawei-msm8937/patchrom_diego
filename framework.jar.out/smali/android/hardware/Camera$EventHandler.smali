.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1180
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1181
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1182
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1183
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1187
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 1504
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown message type "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1189
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1195
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    check-cast v30, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1202
    :sswitch_2
    const/16 v18, 0x0

    .line 1203
    .local v18, "jcb":Landroid/hardware/Camera$PictureCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mJpegCallbackLock:Ljava/lang/Object;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 1204
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v18

    .line 1205
    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    if-eqz v18, :cond_0

    .line 1208
    # getter for: Landroid/hardware/Camera;->HWFLOW:Z
    invoke-static {}, Landroid/hardware/Camera;->access$400()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 1209
    const-string v30, "Camera"

    const-string v31, "handle CAMERA_MSG_COMPRESSED_IMAGE."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    check-cast v30, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1205
    :catchall_0
    move-exception v30

    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    .line 1217
    .end local v18    # "jcb":Landroid/hardware/Camera$PictureCallback;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v21

    .line 1218
    .local v21, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v21, :cond_0

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v30 .. v31}, Landroid/hardware/Camera;->access$502(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1230
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    check-cast v30, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1224
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const/16 v32, 0x0

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static/range {v30 .. v32}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1235
    .end local v21    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    check-cast v30, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1241
    :sswitch_5
    const/4 v6, 0x0

    .line 1242
    .local v6, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 1243
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v6

    .line 1244
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1245
    if-eqz v6, :cond_0

    .line 1246
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-nez v30, :cond_4

    const/16 v28, 0x0

    .line 1247
    .local v28, "success":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v6, v0, v1}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1244
    .end local v28    # "success":Z
    :catchall_1
    move-exception v30

    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v30

    .line 1246
    :cond_4
    const/16 v28, 0x1

    goto :goto_2

    .line 1252
    .end local v6    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    if-eqz v30, :cond_5

    const/16 v30, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v30

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/16 v30, 0x0

    goto :goto_3

    .line 1259
    :sswitch_7
    const/4 v10, 0x0

    .line 1260
    .local v10, "fdcb":Landroid/hardware/Camera$FaceDetectionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mFaceDetectionCallbackLock:Ljava/lang/Object;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 1261
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v10

    .line 1262
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1263
    if-eqz v10, :cond_0

    .line 1264
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Landroid/hardware/Camera$Face;

    check-cast v30, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v10, v0, v1}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1262
    :catchall_2
    move-exception v30

    :try_start_5
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v30

    .line 1270
    .end local v10    # "fdcb":Landroid/hardware/Camera$FaceDetectionListener;
    :sswitch_8
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1278
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/hardware/Camera;->mFocusMoveValue:I

    .line 1281
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-nez v30, :cond_7

    const/16 v30, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_7
    const/16 v30, 0x1

    goto :goto_4

    .line 1287
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mTargetTrackingCallback:Landroid/hardware/Camera$TargetTrackingCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$TargetTrackingCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mTargetTrackingCallback:Landroid/hardware/Camera$TargetTrackingCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$TargetTrackingCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$TargetTrackingCallback;->onTargetTracking(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1293
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$LcdCompensateCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$LcdCompensateCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Landroid/hardware/Camera$LcdCompensateCallback;->onLcdCompensate(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1301
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mDualCameraVerificationCallback:Landroid/hardware/Camera$DualCameraVerificationCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$DualCameraVerificationCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mDualCameraVerificationCallback:Landroid/hardware/Camera$DualCameraVerificationCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$DualCameraVerificationCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$DualCameraVerificationCallback;->onDualCameraVerification(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1308
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mLaserCalibrationCallback:Landroid/hardware/Camera$LaserCalibrationCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$LaserCalibrationCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mLaserCalibrationCallback:Landroid/hardware/Camera$LaserCalibrationCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$LaserCalibrationCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$LaserCalibrationCallback;->onLaserCalibration(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1315
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mDualCameraStateChangedCallback:Landroid/hardware/Camera$DualCameraStateChangedCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$DualCameraStateChangedCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1316
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_DUAL_CAMERA_SHELTER: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mDualCameraStateChangedCallback:Landroid/hardware/Camera$DualCameraStateChangedCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$DualCameraStateChangedCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$DualCameraStateChangedCallback;->onDualCameraStateChanged(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1323
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMMITestFeatureCallback:Landroid/hardware/Camera$MMITestFeatureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$MMITestFeatureCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMMITestFeatureCallback:Landroid/hardware/Camera$MMITestFeatureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$MMITestFeatureCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$MMITestFeatureCallback;->onMMITestFeatureVerify(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1330
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ExposureMeasureCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1331
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_EXPOSURE_MEASURE_TIME: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ExposureMeasureCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$ExposureMeasureCallback;->onExposureMeasured(IILandroid/hardware/Camera;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Landroid/hardware/Camera;->mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;
    invoke-static/range {v30 .. v31}, Landroid/hardware/Camera;->access$2302(Landroid/hardware/Camera;Landroid/hardware/Camera$ExposureMeasureCallback;)Landroid/hardware/Camera$ExposureMeasureCallback;

    goto/16 :goto_0

    .line 1337
    :sswitch_11
    const/16 v24, 0x0

    .line 1338
    .local v24, "previewStatecb":Landroid/hardware/Camera$ExposurePreviewStateCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mExposurePreviewStateCallbackLock:Ljava/lang/Object;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 1339
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mExposurePreviewStateCallback:Landroid/hardware/Camera$ExposurePreviewStateCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ExposurePreviewStateCallback;

    move-result-object v24

    .line 1340
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1341
    if-eqz v24, :cond_8

    .line 1342
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_EXPOSURE_PREVIEW_STATE: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/hardware/Camera$ExposurePreviewStateCallback;->onExposurePreviewState(Landroid/hardware/Camera;)V

    .line 1345
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Landroid/hardware/Camera;->mExposurePreviewStateCallback:Landroid/hardware/Camera$ExposurePreviewStateCallback;
    invoke-static/range {v30 .. v31}, Landroid/hardware/Camera;->access$2502(Landroid/hardware/Camera;Landroid/hardware/Camera$ExposurePreviewStateCallback;)Landroid/hardware/Camera$ExposurePreviewStateCallback;

    goto/16 :goto_0

    .line 1340
    :catchall_3
    move-exception v30

    :try_start_7
    monitor-exit v31
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v30

    .line 1348
    .end local v24    # "previewStatecb":Landroid/hardware/Camera$ExposurePreviewStateCallback;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPdafVerificationCallback:Landroid/hardware/Camera$PdafVerificationCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$PdafVerificationCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1349
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_PDAF_VERIFY: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPdafVerificationCallback:Landroid/hardware/Camera$PdafVerificationCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$PdafVerificationCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$PdafVerificationCallback;->onPdafVerification(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1354
    :sswitch_13
    const/16 v23, 0x0

    .line 1355
    .local v23, "previewCb":Landroid/hardware/Camera$PreviewParametersCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPreviewParamsCallBackLock:Ljava/lang/Object;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 1356
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPreviewParamsCallBack:Landroid/hardware/Camera$PreviewParametersCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewParametersCallback;

    move-result-object v30

    if-nez v30, :cond_9

    .line 1357
    monitor-exit v31

    goto/16 :goto_0

    .line 1360
    :catchall_4
    move-exception v30

    monitor-exit v31
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v30

    .line 1359
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPreviewParamsCallBack:Landroid/hardware/Camera$PreviewParametersCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewParametersCallback;

    move-result-object v23

    .line 1360
    monitor-exit v31
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1362
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    move-object/from16 v22, v30

    check-cast v22, [B

    .line 1363
    .local v22, "prevParams":[B
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1366
    .local v5, "bndl":Landroid/os/Bundle;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_a

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    # invokes: Landroid/hardware/Camera;->formatExposureTime([B)Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;[B)Ljava/lang/String;

    move-result-object v27

    .line 1368
    .local v27, "strExpoTime":Ljava/lang/String;
    if-eqz v27, :cond_a

    .line 1369
    const-string v30, "exposure_time"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "professional exposure time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    .end local v27    # "strExpoTime":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_b

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    # invokes: Landroid/hardware/Camera;->formatIsoValue([B)I
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;[B)I

    move-result v17

    .line 1377
    .local v17, "isoValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPreviewIsoValue:I
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    const/16 v30, -0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    .line 1378
    const-string/jumbo v30, "iso_value"

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v17

    # setter for: Landroid/hardware/Camera;->mPreviewIsoValue:I
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$3102(Landroid/hardware/Camera;I)I

    .line 1380
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "professional ISO: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    .end local v17    # "isoValue":I
    :cond_b
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    # invokes: Landroid/hardware/Camera;->formatExposureHint([B)I
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$3200(Landroid/hardware/Camera;[B)I

    move-result v9

    .line 1387
    .local v9, "expoHint":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mPreviewExposureHint:I
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3300(Landroid/hardware/Camera;)I

    move-result v30

    move/from16 v0, v30

    if-eq v0, v9, :cond_c

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v9, v0, :cond_c

    .line 1388
    const-string v30, "exposure_hint"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    # setter for: Landroid/hardware/Camera;->mPreviewExposureHint:I
    invoke-static {v0, v9}, Landroid/hardware/Camera;->access$3302(Landroid/hardware/Camera;I)I

    .line 1390
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "professional exposure hint: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    .end local v9    # "expoHint":I
    :cond_c
    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_0

    .line 1398
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/hardware/Camera$PreviewParametersCallback;->onParameterChanged(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1401
    .end local v5    # "bndl":Landroid/os/Bundle;
    .end local v22    # "prevParams":[B
    .end local v23    # "previewCb":Landroid/hardware/Camera$PreviewParametersCallback;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mHdcResultCallback:Landroid/hardware/Camera$HdcResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdcResultCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1402
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_HDC_RESULT: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mHdcResultCallback:Landroid/hardware/Camera$HdcResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdcResultCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$HdcResultCallback;->onResult(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1407
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mFovResultCallback:Landroid/hardware/Camera$FovResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$FovResultCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1408
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_FOV_RESULT: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mFovResultCallback:Landroid/hardware/Camera$FovResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$FovResultCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$FovResultCallback;->onResult(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1413
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mDarkRaiderCallback:Landroid/hardware/Camera$DarkRaiderCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$DarkRaiderCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1414
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_DARK_RAIDER: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mDarkRaiderCallback:Landroid/hardware/Camera$DarkRaiderCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$DarkRaiderCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/hardware/Camera$DarkRaiderCallback;->onDarkRaiderCallback(IILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1419
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mLpdParasCallback:Landroid/hardware/Camera$LpdParametersCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$LpdParametersCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mLpdParasCallback:Landroid/hardware/Camera$LpdParametersCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$LpdParametersCallback;

    move-result-object v31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    check-cast v30, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$LpdParametersCallback;->onGetParametersByte([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1424
    :sswitch_18
    const/16 v26, 0x0

    .line 1425
    .local v26, "resultCb":Landroid/hardware/Camera$MmiFocusResultCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMmiFocusResultCallBackLock:Ljava/lang/Object;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 1426
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMmiFocusResultCallback:Landroid/hardware/Camera$MmiFocusResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MmiFocusResultCallback;

    move-result-object v30

    if-nez v30, :cond_d

    .line 1427
    monitor-exit v31

    goto/16 :goto_0

    .line 1430
    :catchall_5
    move-exception v30

    monitor-exit v31
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v30

    .line 1429
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMmiFocusResultCallback:Landroid/hardware/Camera$MmiFocusResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$3900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MmiFocusResultCallback;

    move-result-object v26

    .line 1430
    monitor-exit v31
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1432
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    move-object/from16 v19, v30

    check-cast v19, [B

    .line 1433
    .local v19, "mmiFocus":[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move/from16 v2, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v1, v2}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v20

    .line 1438
    .local v20, "num":I
    if-lez v20, :cond_0

    const/16 v30, 0xa

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_0

    .line 1442
    mul-int/lit8 v30, v20, 0x2

    add-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 1443
    .local v25, "result":[I
    const/16 v30, 0x0

    aput v20, v25, v30

    .line 1444
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    const/16 v32, 0x4

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move/from16 v2, v32

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v1, v2}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v31

    aput v31, v25, v30

    .line 1445
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_MMI_FOCUS_RESULT, num: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget v32, v25, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " flag: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    aget v32, v25, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 1448
    mul-int/lit8 v30, v16, 0x2

    add-int/lit8 v30, v30, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v16, 0x2

    add-int/lit8 v32, v32, 0x2

    mul-int/lit8 v32, v32, 0x4

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move/from16 v2, v32

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v1, v2}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v31

    aput v31, v25, v30

    .line 1449
    mul-int/lit8 v30, v16, 0x2

    add-int/lit8 v30, v30, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v16, 0x2

    add-int/lit8 v32, v32, 0x3

    mul-int/lit8 v32, v32, 0x4

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move/from16 v2, v32

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v1, v2}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v31

    aput v31, v25, v30

    .line 1450
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_MMI_FOCUS_RESULT, result: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    mul-int/lit8 v32, v16, 0x2

    add-int/lit8 v32, v32, 0x2

    aget v32, v25, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " result: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    mul-int/lit8 v32, v16, 0x2

    add-int/lit8 v32, v32, 0x3

    aget v32, v25, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1453
    :cond_e
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/hardware/Camera$MmiFocusResultCallback;->onResult([I)V

    goto/16 :goto_0

    .line 1456
    .end local v16    # "i":I
    .end local v19    # "mmiFocus":[B
    .end local v20    # "num":I
    .end local v25    # "result":[I
    .end local v26    # "resultCb":Landroid/hardware/Camera$MmiFocusResultCallback;
    :sswitch_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1457
    .local v29, "type":I
    const/4 v7, 0x0

    .line 1458
    .local v7, "data":[B
    if-nez v29, :cond_f

    .line 1459
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    move-object/from16 v7, v30

    check-cast v7, [B

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v7, v1}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v29

    .line 1462
    :cond_f
    packed-switch v29, :pswitch_data_0

    .line 1500
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown extend message type "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1466
    :pswitch_0
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_MAKEUP_TIPS_RESULT_ID: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMakeupEffectCallback:Landroid/hardware/Camera$MakeupEffectCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4100(Landroid/hardware/Camera;)Landroid/hardware/Camera$MakeupEffectCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mMakeupEffectCallback:Landroid/hardware/Camera$MakeupEffectCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4100(Landroid/hardware/Camera;)Landroid/hardware/Camera$MakeupEffectCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Landroid/hardware/Camera$MakeupEffectCallback;->makeupEffect(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1472
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v7, v1}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v11

    .line 1473
    .local v11, "gryoOffsetCalibResult":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v7, v1}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v12

    .line 1474
    .local v12, "gryoOffset_x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0xc

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v7, v1}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v13

    .line 1475
    .local v13, "gryoOffset_y":I
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_OIS_GRYO_OFFSET_CALIB_RESULT: x:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", y:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ",result:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOisGryoOffseCalibResultCallback:Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOisGryoOffseCalibResultCallback:Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v12, v13, v11, v1}, Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;->onResult(IIILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1482
    .end local v11    # "gryoOffsetCalibResult":I
    .end local v12    # "gryoOffset_x":I
    .end local v13    # "gryoOffset_y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v7, v1}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v15

    .line 1483
    .local v15, "hallCalibResult":I
    const/16 v30, 0x8

    move/from16 v0, v30

    new-array v8, v0, [B

    .line 1484
    .local v8, "driverName":[B
    const/16 v30, 0x8

    const/16 v31, 0x0

    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v7, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    array-length v0, v7

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x4

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/hardware/Camera;->byteArrayToInt32([BI)I
    invoke-static {v0, v7, v1}, Landroid/hardware/Camera;->access$4000(Landroid/hardware/Camera;[BI)I

    move-result v4

    .line 1486
    .local v4, "ad_offset_y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOisHallCalibResultCallback:Landroid/hardware/Camera$OisHallCalibResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisHallCalibResultCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1487
    array-length v0, v7

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    move/from16 v0, v30

    new-array v14, v0, [B

    .line 1488
    .local v14, "hallCalibData":[B
    const/16 v30, 0x8

    const/16 v31, 0x0

    array-length v0, v14

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v7, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOisHallCalibResultCallback:Landroid/hardware/Camera$OisHallCalibResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisHallCalibResultCallback;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v14, v15, v1}, Landroid/hardware/Camera$OisHallCalibResultCallback;->onResult([BILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1493
    .end local v4    # "ad_offset_y":I
    .end local v8    # "driverName":[B
    .end local v14    # "hallCalibData":[B
    .end local v15    # "hallCalibResult":I
    :pswitch_3
    const-string v30, "Camera"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "CAMERA_MSG_OIS_HALL_CHECK_RESULT: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOisHallCheckResultCallback:Landroid/hardware/Camera$OisHallCheckResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4400(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisHallCheckResultCallback;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v30, v0

    # getter for: Landroid/hardware/Camera;->mOisHallCheckResultCallback:Landroid/hardware/Camera$OisHallCheckResultCallback;
    invoke-static/range {v30 .. v30}, Landroid/hardware/Camera;->access$4400(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisHallCheckResultCallback;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Landroid/hardware/Camera$OisHallCheckResultCallback;->onResult(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1187
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_17
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x10000 -> :sswitch_a
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_c
        0x80000 -> :sswitch_e
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_11
        0x400000 -> :sswitch_12
        0x800000 -> :sswitch_13
        0x1000000 -> :sswitch_d
        0x2000000 -> :sswitch_14
        0x4000000 -> :sswitch_15
        0x8000000 -> :sswitch_16
        0x10000000 -> :sswitch_18
        0x20000000 -> :sswitch_f
        0x40000000 -> :sswitch_19
    .end sparse-switch

    .line 1462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

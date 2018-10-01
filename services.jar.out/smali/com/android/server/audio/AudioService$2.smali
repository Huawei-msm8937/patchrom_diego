.class Lcom/android/server/audio/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 17
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 3197
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    sparse-switch p1, :sswitch_data_0

    .line 3302
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 3202
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8

    .line 3203
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3204
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    # setter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 3206
    .local v15, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3207
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 3208
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 3209
    .local v4, "state":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v3, 0x80

    const/4 v1, 0x2

    if-ne v4, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;II)I

    move-result v7

    .line 3212
    .local v7, "delay":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x66

    const/4 v5, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3219
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "delay":I
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3220
    :try_start_2
    monitor-exit v8

    goto :goto_0

    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3209
    .restart local v4    # "state":I
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3219
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3224
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_1
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 3225
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3226
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 3227
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 3228
    :try_start_5
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 3229
    .restart local v4    # "state":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x65

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v11, v4

    move-object v13, v6

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3235
    monitor-exit v2

    goto/16 :goto_0

    .end local v4    # "state":I
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 3240
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3242
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 3243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 3244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 3245
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3251
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)V

    .line 3253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 3256
    :cond_3
    const/16 v16, 0x0

    .line 3257
    .local v16, "status":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3287
    :pswitch_0
    const-string v1, "AudioService"

    const-string v3, "resolve findbugs"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_4
    :goto_3
    if-nez v16, :cond_5

    .line 3292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3296
    .end local v16    # "status":Z
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 3248
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    .line 3260
    .restart local v16    # "status":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 3261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 3262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v16

    goto :goto_3

    .line 3263
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_8

    .line 3264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto :goto_3

    .line 3266
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 3267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto :goto_3

    .line 3272
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 3273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v16

    goto/16 :goto_3

    .line 3274
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_a

    .line 3275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_3

    .line 3277
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 3278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_3

    .line 3283
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v16

    .line 3285
    goto/16 :goto_3

    .line 3200
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch

    .line 3258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 9
    .param p1, "profile"    # I

    .prologue
    const/16 v7, 0x80

    .line 3304
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceDisconnected profile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    const/4 v3, 0x0

    .line 3306
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    .line 3361
    :goto_0
    return-void

    .line 3308
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    monitor-enter v5

    .line 3309
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3311
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3312
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 3313
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v4, v7, :cond_0

    .line 3314
    if-eqz v3, :cond_1

    .line 3315
    :goto_2
    iget-object v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3311
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3314
    :cond_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    goto :goto_2

    .line 3318
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2
    if-eqz v3, :cond_3

    .line 3319
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v7, 0x80

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v4, v7, v8}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;II)I

    move-result v0

    .line 3322
    .local v0, "delay":I
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 3323
    iget-object v7, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    invoke-static {v7, v4, v0}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 3322
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3326
    .end local v0    # "delay":I
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3327
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3326
    .restart local v2    # "i":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3331
    .end local v2    # "i":I
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    monitor-enter v5

    .line 3333
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 3334
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 3335
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v6, -0x7ffe0000

    if-ne v4, v6, :cond_4

    .line 3336
    if-eqz v3, :cond_5

    .line 3337
    :goto_5
    iget-object v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3333
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3336
    :cond_5
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    goto :goto_5

    .line 3340
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_6
    if-eqz v3, :cond_7

    .line 3341
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 3342
    iget-object v6, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 3341
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3345
    :cond_7
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 3349
    .end local v2    # "i":I
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 3350
    :try_start_6
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 3351
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3354
    :cond_8
    iget-object v4, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v4, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 3355
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    .line 3306
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

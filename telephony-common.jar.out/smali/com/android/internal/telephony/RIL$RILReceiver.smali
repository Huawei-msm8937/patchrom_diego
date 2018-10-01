.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 556
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 561
    const/4 v10, 0x0

    .line 562
    .local v10, "retryCount":I
    const-string v11, "rild"

    .line 565
    .local v11, "rilSocket":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 568
    .local v12, "s":Landroid/net/LocalSocket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_7

    .line 569
    :cond_1
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v11, v15, v16

    .line 574
    :goto_1
    const/16 v15, 0x10

    invoke-static {v15}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v15}, Lcom/android/internal/telephony/RIL;->isPlatformTwoModems()Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v15, v15, Lcom/android/internal/telephony/RIL;->mRilSocketMapEnable:Z

    if-eqz v15, :cond_a

    .line 578
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    if-nez v15, :cond_2

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    # setter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRilSocketMaps:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget v15, v15, v16

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 582
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilSocketMaps:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget v16, v16, v17

    aget-object v11, v15, v16
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 625
    :cond_3
    :goto_2
    :try_start_1
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 626
    .end local v12    # "s":Landroid/net/LocalSocket;
    .local v13, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v7, Landroid/net/LocalSocketAddress;

    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, v11, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 628
    .local v7, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 661
    const/4 v10, 0x0

    .line 663
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v13, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 664
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v15}, Lcom/android/internal/telephony/RIL;->isPlatformTwoModems()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/internal/telephony/RIL;->mRadioAvailable:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendResultMessage()V
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 674
    :cond_4
    const/4 v8, 0x0

    .line 676
    .local v8, "length":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 681
    .local v4, "is":Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v15}, Lcom/android/internal/telephony/RIL;->isPlatformTwoModems()Z

    move-result v15

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v15, v15, Lcom/android/internal/telephony/RIL;->shouldBreakRilSocket:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v15, :cond_13

    .line 683
    const-wide/16 v16, 0x1f4

    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 686
    :goto_4
    :try_start_6
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")after wait shouldBreakRilSocket, do it"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 714
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_5
    :goto_5
    :try_start_7
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v15}, Lcom/android/internal/telephony/RIL;->isPlatformTwoModems()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/internal/telephony/RIL;->mRadioAvailable:Z

    .line 721
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v16, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 724
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 728
    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 729
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x1

    const/16 v17, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;IZ)V

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v15}, Lcom/android/internal/telephony/RIL;->isPlatformTwoModems()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v15, v15, Lcom/android/internal/telephony/RIL;->shouldBreakRilSocket:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v15, :cond_0

    .line 737
    const-wide/16 v16, 0x1f4

    :try_start_a
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 740
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/internal/telephony/RIL;->shouldBreakRilSocket:Z

    .line 741
    const-string v15, "RILJ"

    const-string v16, "wait for 500ms!"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 744
    .end local v7    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "length":I
    :catch_0
    move-exception v14

    move-object v12, v13

    .line 745
    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    .local v14, "tr":Ljava/lang/Throwable;
    :goto_8
    const-string v15, "RILJ"

    const-string v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;I)V

    .line 750
    return-void

    .line 571
    .end local v14    # "tr":Ljava/lang/Throwable;
    :cond_7
    :try_start_c
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v11, v15, v16

    goto/16 :goto_1

    .line 584
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v15, Lcom/android/internal/telephony/RIL;->mPendingRilSocketLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    .line 586
    :try_start_d
    const-string v15, "RILJ"

    const-string v17, "[2Cards]begin to wait for mPendingRilSocketLock!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRilSocketMaps:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget v15, v15, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendResultMessage()V
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mPendingRilSocketLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 596
    :cond_9
    :goto_9
    :try_start_e
    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 598
    const-wide/16 v16, 0x258

    :try_start_f
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    .line 599
    :catch_1
    move-exception v2

    .line 600
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_10
    const-string v15, "RILJ"

    const-string v16, "sleep interrupted exception!"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_0

    .line 744
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v14

    goto :goto_8

    .line 593
    :catch_3
    move-exception v2

    .line 594
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_11
    const-string v15, "RILJ"

    const-string v17, "wait for mPendingRilSocketLock exception!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 596
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    throw v15

    .line 606
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "switch_dual_card_slots"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 608
    .local v6, "isSlotsSwitched":I
    const-string v15, "HwHisiRIL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->sRILClassname:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 609
    .local v5, "isHisiPlt":Z
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bHisiPlt = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_d

    .line 611
    :cond_b
    const/4 v15, 0x1

    if-ne v6, v15, :cond_c

    if-eqz v5, :cond_c

    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v11, v15, v16

    .line 617
    :goto_a
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isSlotsSwitched = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", rilSocket = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", mInstanceId = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 611
    :cond_c
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v11, v15, v16

    goto :goto_a

    .line 612
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 613
    const/4 v15, 0x1

    if-ne v6, v15, :cond_e

    if-eqz v5, :cond_e

    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v11, v15, v16

    :goto_b
    goto :goto_a

    :cond_e
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v11, v15, v16

    goto :goto_b

    .line 615
    :cond_f
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v11, v15, v16
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_a

    .line 629
    .end local v5    # "isHisiPlt":Z
    .end local v6    # "isSlotsSwitched":I
    :catch_4
    move-exception v3

    .line 631
    .local v3, "ex":Ljava/io/IOException;
    :goto_c
    if-eqz v12, :cond_10

    .line 632
    :try_start_13
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2

    .line 641
    :cond_10
    :goto_d
    const/16 v15, 0x8

    if-ne v10, v15, :cond_12

    .line 642
    :try_start_14
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " times, continuing to retry silently"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2

    .line 653
    :cond_11
    :goto_e
    const-wide/16 v16, 0xfa0

    :try_start_15
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2

    .line 657
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 658
    goto/16 :goto_0

    .line 646
    :cond_12
    if-ltz v10, :cond_11

    const/16 v15, 0x8

    if-ge v10, v15, :cond_11

    .line 647
    :try_start_16
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket; retrying after timeout"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_e

    .line 690
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "l":Landroid/net/LocalSocketAddress;
    .restart local v8    # "length":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :cond_13
    :try_start_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v4, v15}, Lcom/android/internal/telephony/RIL;->access$600(Ljava/io/InputStream;[B)I

    move-result v8

    .line 692
    if-ltz v8, :cond_5

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 698
    .local v9, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 699
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v15, v9}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 704
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_3

    .line 706
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v9    # "p":Landroid/os/Parcel;
    :catch_5
    move-exception v3

    .line 707
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_18
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 709
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 710
    .restart local v14    # "tr":Ljava/lang/Throwable;
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_5

    .line 634
    .end local v7    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "length":I
    .end local v13    # "s":Landroid/net/LocalSocket;
    .end local v14    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v15

    goto/16 :goto_d

    .line 654
    :catch_8
    move-exception v15

    goto/16 :goto_f

    .line 684
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "l":Landroid/net/LocalSocketAddress;
    .restart local v8    # "length":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catch_9
    move-exception v15

    goto/16 :goto_4

    .line 738
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v15

    goto/16 :goto_7

    .line 725
    :catch_b
    move-exception v15

    goto/16 :goto_6

    .line 629
    .end local v7    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "length":I
    :catch_c
    move-exception v3

    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_c
.end method

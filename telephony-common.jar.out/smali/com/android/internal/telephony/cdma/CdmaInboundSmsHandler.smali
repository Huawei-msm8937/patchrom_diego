.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 69
    const-string v1, "CdmaInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 71
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 72
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 74
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 383
    add-int/lit8 p1, p1, 0x4

    .line 384
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 385
    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/telephony/HwInnerSmsManager;->createHwWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v2

    .line 391
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 394
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v4

    .line 398
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 401
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "mimeType":Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 3
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v0

    .line 295
    .local v0, "voicemailCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voicemail count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 298
    if-gez v0, :cond_1

    .line 299
    const/4 v0, -0x1

    .line 306
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->storeVoiceMailCount()V

    .line 309
    return-void

    .line 300
    :cond_1
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 303
    const/16 v0, 0x63

    goto :goto_0
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    .prologue
    .line 105
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "inEcm":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 94
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 96
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    .line 97
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 18
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 323
    const/4 v13, 0x0

    .line 325
    .local v13, "index":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v15, v4, 0xff

    .line 326
    .local v15, "msgType":I
    if-eqz v15, :cond_0

    .line 327
    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 328
    const/4 v4, 0x1

    move v13, v14

    .line 368
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :goto_0
    return v4

    .line 330
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_0
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v11, v4, 0xff

    .line 331
    .local v11, "totalSegments":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v10, v4, 0xff

    .line 333
    .local v10, "segment":I
    if-lt v10, v11, :cond_1

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WDP bad segment #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expecting 0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 335
    const/4 v4, 0x1

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_0

    .line 339
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_1
    const/16 v16, 0x0

    .line 340
    .local v16, "sourcePort":I
    const/4 v6, 0x0

    .line 341
    .local v6, "destinationPort":I
    if-nez v10, :cond_2

    .line 343
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v16, v4, 0x8

    .line 344
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v4, v4, 0xff

    or-int v16, v16, v4

    .line 345
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v4, 0x8

    .line 346
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v6, v4

    .line 349
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v4, :cond_2

    .line 350
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    add-int/lit8 v13, v14, 0x4

    .line 357
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dst-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", segment# = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v13

    new-array v3, v4, [B

    .line 363
    .local v3, "userData":[B
    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int/2addr v5, v13

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 365
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v7, 0x1

    const/4 v12, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 368
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v4

    goto/16 :goto_0

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v3    # "userData":[B
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_2
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 274
    packed-switch p0, :pswitch_data_0

    .line 285
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 278
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 282
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 242
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 247
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 249
    if-nez v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 252
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 11
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v0, -0x1

    .line 231
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v9, p1

    .line 129
    check-cast v9, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 130
    .local v9, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v7, v0

    .line 133
    .local v7, "isBroadcastType":Z
    :goto_1
    if-eqz v7, :cond_4

    .line 134
    const-string v1, "Broadcast type message"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v6

    .line 136
    .local v6, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_0

    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v7    # "isBroadcastType":Z
    :cond_2
    move v7, v1

    .line 130
    goto :goto_1

    .line 139
    .restart local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .restart local v7    # "isBroadcastType":Z
    :cond_3
    const-string v1, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_4
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 153
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v10

    .line 155
    .local v10, "teleService":I
    sparse-switch v10, :sswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported teleservice 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x4

    goto :goto_0

    .line 159
    :sswitch_0
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    goto :goto_0

    .line 164
    :sswitch_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    goto :goto_0

    .line 171
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :sswitch_3
    const/16 v2, 0x5c

    const-string v3, "ro.config.hw_opta"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_6

    const/16 v2, 0x3e7

    const-string v3, "ro.config.hw_opta"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_7

    :cond_6
    const/16 v2, 0x9c

    const-string v3, "ro.config.hw_optb"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_7

    .line 188
    const-string v1, "CT\'s AutoRegSms notification!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchCTAutoRegSmsPdus(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto/16 :goto_0

    .line 199
    :cond_7
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_8

    .line 204
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 207
    :cond_8
    const/16 v1, 0x1004

    if-ne v1, v10, :cond_9

    .line 208
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, v9, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 216
    :cond_9
    const v1, 0xfdea

    if-ne v1, v10, :cond_b

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwInnerSmsManager;->currentSubIsChinaTelecomSim(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 218
    const-string v1, "CT\'s MMS notification"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v8

    .line 220
    .local v8, "mCTBearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-nez v8, :cond_a

    .line 221
    const-string v1, "Decode user data failed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_a
    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/16 v2, 0x1f

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 231
    .end local v8    # "mCTBearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto/16 :goto_0

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_4
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0xfdea -> :sswitch_4
        0xfded -> :sswitch_3
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 85
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 87
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 266
    return-void
.end method

.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 122
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 129
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 97
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 102
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 107
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 117
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 140
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 142
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 143
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 144
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 145
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/mms/pdu/PduComposer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 471
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 473
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 475
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 487
    .end local v0    # "addressType":I
    :goto_1
    return-object v3

    .line 476
    .restart local v0    # "addressType":I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 478
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 483
    .end local v0    # "addressType":I
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 479
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 481
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 24
    .param p1, "field"    # I

    .prologue
    .line 494
    packed-switch p1, :pswitch_data_0

    .line 656
    :pswitch_0
    const/16 v21, 0x3

    .line 659
    :goto_0
    return v21

    .line 496
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 499
    .local v20, "version":I
    if-nez v20, :cond_1

    .line 500
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 659
    .end local v20    # "version":I
    :cond_0
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    .line 502
    .restart local v20    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 509
    .end local v20    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 510
    .local v19, "textString":[B
    if-nez v19, :cond_2

    .line 511
    const/16 v21, 0x2

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 521
    .end local v19    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 523
    .local v4, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_3

    .line 524
    const/16 v21, 0x2

    goto :goto_0

    .line 528
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 529
    aget-object v21, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 530
    .local v18, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_4

    .line 531
    const/16 v21, 0x1

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 528
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 541
    .end local v4    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    .line 544
    .local v13, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    new-instance v21, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    const-string v22, "insert-address-token"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 549
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 551
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 553
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v14

    .line 557
    .local v14, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 559
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 560
    .restart local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_7

    .line 561
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 564
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 566
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 567
    .local v12, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 568
    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 580
    .end local v12    # "flen":I
    .end local v13    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 581
    .local v17, "octet":I
    if-nez v17, :cond_8

    .line 582
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 585
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 586
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 590
    .end local v17    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 591
    .local v6, "date":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v6

    if-nez v21, :cond_9

    .line 592
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 595
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 596
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 601
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 603
    .local v5, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_a

    .line 604
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 607
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 608
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 612
    .end local v5    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 613
    .local v16, "messageClass":[B
    if-nez v16, :cond_b

    .line 614
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 617
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 618
    const-string v21, "advertisement"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 620
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 621
    :cond_c
    const-string v21, "auto"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 623
    const/16 v21, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 624
    :cond_d
    const-string v21, "personal"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 626
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 627
    :cond_e
    const-string v21, "informational"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 629
    const/16 v21, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 631
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 636
    .end local v16    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 637
    .local v8, "expiry":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v8

    if-nez v21, :cond_10

    .line 638
    const/16 v21, 0x2

    goto/16 :goto_0

    .line 641
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 646
    .local v11, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 647
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 649
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v10

    .line 650
    .local v10, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 651
    int-to-long v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 1276
    if-nez p0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return v0

    .line 1280
    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1282
    const/4 v0, 0x3

    goto :goto_0

    .line 1283
    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1285
    const/4 v0, 0x1

    goto :goto_0

    .line 1286
    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1288
    const/4 v0, 0x2

    goto :goto_0

    .line 1289
    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 826
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 827
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 828
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 832
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 833
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 836
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 848
    :cond_1
    :goto_0
    return v0

    .line 841
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 846
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 848
    goto :goto_0
.end method

.method private makeMessageBody(I)I
    .locals 32
    .param p1, "type"    # I

    .prologue
    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 953
    .local v16, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 955
    .local v10, "contentType":Ljava/lang/String;
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 956
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_1

    .line 958
    const/16 v29, 0x1

    .line 1135
    :cond_0
    :goto_0
    return v29

    .line 961
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 965
    const/16 v29, 0x84

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 970
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_4

    .line 972
    :cond_2
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 975
    const/16 v29, 0x0

    goto :goto_0

    .line 968
    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .restart local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    goto :goto_1

    .line 980
    :cond_4
    const/16 v29, 0x0

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 982
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 983
    .local v28, "start":[B
    if-eqz v28, :cond_5

    .line 984
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 985
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 986
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 993
    :cond_5
    :goto_2
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 994
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v28    # "start":[B
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 1001
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1002
    int-to-long v0, v15

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1006
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 1007
    .local v27, "partNum":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1008
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 1009
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 1010
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 1013
    .local v4, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 1016
    .local v11, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 1018
    .local v24, "partContentType":[B
    if-nez v24, :cond_7

    .line 1020
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 988
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v20    # "i":I
    .end local v24    # "partContentType":[B
    .end local v27    # "partNum":I
    .restart local v28    # "start":[B
    :cond_6
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 996
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v28    # "start":[B
    :catch_0
    move-exception v18

    .line 997
    .local v18, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_3

    .line 1024
    .end local v18    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v20    # "i":I
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v27    # "partNum":I
    :cond_7
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1026
    .local v25, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v25, :cond_8

    .line 1027
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1036
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 1038
    .local v22, "name":[B
    if-nez v22, :cond_9

    .line 1039
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 1041
    if-nez v22, :cond_9

    .line 1042
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 1044
    if-nez v22, :cond_9

    .line 1045
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v22

    .line 1047
    if-nez v22, :cond_9

    .line 1050
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1029
    .end local v22    # "name":[B
    :cond_8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_5

    .line 1055
    .restart local v22    # "name":[B
    :cond_9
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1059
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1060
    .local v7, "charset":I
    if-eqz v7, :cond_a

    .line 1061
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1062
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1065
    :cond_a
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1066
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1067
    int-to-long v0, v13

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1071
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1073
    .local v8, "contentId":[B
    if-eqz v8, :cond_b

    .line 1074
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1075
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    const/16 v29, 0x3e

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 1076
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1083
    :cond_b
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1084
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_c

    .line 1085
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1086
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1090
    :cond_c
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1092
    .local v19, "headerLength":I
    const/16 v17, 0x0

    .line 1093
    .local v17, "dataLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 1095
    .local v26, "partData":[B
    if-eqz v26, :cond_f

    .line 1096
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1097
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1125
    :cond_d
    :goto_7
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 1126
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1078
    .end local v9    # "contentLocation":[B
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v26    # "partData":[B
    :cond_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_6

    .line 1099
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v26    # "partData":[B
    :cond_f
    const/4 v14, 0x0

    .line 1101
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v6, v0, [B

    .line 1102
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1103
    const/16 v21, 0x0

    .line 1104
    .local v21, "len":I
    :goto_8
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1107
    add-int v17, v17, v21

    goto :goto_8

    .line 1116
    :cond_10
    if-eqz v14, :cond_d

    .line 1118
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    .line 1119
    :catch_1
    move-exception v29

    goto/16 :goto_7

    .line 1109
    .end local v6    # "buffer":[B
    .end local v21    # "len":I
    :catch_2
    move-exception v18

    .line 1110
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    .line 1116
    if-eqz v14, :cond_0

    .line 1118
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1119
    :catch_3
    move-exception v30

    goto/16 :goto_0

    .line 1111
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v18

    .line 1112
    .local v18, "e":Ljava/io/IOException;
    const/16 v29, 0x1

    .line 1116
    if-eqz v14, :cond_0

    .line 1118
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1119
    :catch_5
    move-exception v30

    goto/16 :goto_0

    .line 1113
    .end local v18    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    .line 1114
    .local v18, "e":Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    .line 1116
    if-eqz v14, :cond_0

    .line 1118
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 1119
    :catch_7
    move-exception v30

    goto/16 :goto_0

    .line 1116
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v29

    if-eqz v14, :cond_11

    .line 1118
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1120
    :cond_11
    :goto_9
    throw v29

    .line 1129
    .end local v14    # "cr":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1130
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1131
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1008
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1135
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "partContentType":[B
    .end local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v26    # "partData":[B
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1119
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v9    # "contentLocation":[B
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v13    # "contentTypeLength":I
    .restart local v14    # "cr":Ljava/io/InputStream;
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .restart local v26    # "partData":[B
    :catch_8
    move-exception v30

    goto :goto_9
.end method

.method private makeNotifyInd()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 714
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 715
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 716
    iput v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 720
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 721
    const/16 v4, 0x82

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 724
    const/16 v4, 0x98

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 783
    :goto_0
    return v4

    .line 729
    :cond_1
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 730
    goto :goto_0

    .line 734
    :cond_2
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 735
    goto :goto_0

    .line 738
    :cond_3
    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 739
    const-wide/16 v2, 0x0

    .line 740
    .local v2, "size":J
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    instance-of v4, v4, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v4, :cond_4

    .line 741
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    .line 743
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 745
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 746
    goto :goto_0

    .line 749
    :cond_5
    const/16 v4, 0x83

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "contentLocation":[B
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    instance-of v4, v4, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v4, :cond_6

    .line 752
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 755
    :cond_6
    if-eqz v0, :cond_8

    .line 756
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd contentLocation != null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 762
    :goto_1
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    instance-of v4, v4, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v4, :cond_7

    .line 765
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 768
    :cond_7
    if-eqz v1, :cond_9

    .line 769
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd subject != null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 775
    :goto_2
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    .line 776
    goto :goto_0

    .line 759
    .end local v1    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd contentLocation  = null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    .restart local v1    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    const-string v4, "PduComposer"

    const-string v7, "makeNotifyInd subject  = null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 779
    :cond_a
    const/16 v4, 0x95

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 780
    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 783
    goto/16 :goto_0
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 790
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 791
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 792
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 796
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 797
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 800
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    :cond_1
    :goto_0
    return v0

    .line 805
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 810
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 817
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 819
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 666
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 667
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 668
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 672
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 673
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 676
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    :cond_1
    :goto_0
    return v0

    .line 681
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 686
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 691
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 696
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 699
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 707
    goto :goto_0
.end method

.method private makeSendRetrievePdu(I)I
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x98

    const/16 v4, 0x84

    const/4 v2, 0x1

    .line 855
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_0

    .line 856
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 857
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 861
    :cond_0
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 862
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 865
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 867
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 868
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 870
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 872
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 875
    const/16 v3, 0x8d

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 939
    :cond_2
    :goto_0
    return v2

    .line 880
    :cond_3
    const/16 v3, 0x85

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 883
    const/16 v3, 0x89

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 887
    const/4 v0, 0x0

    .line 890
    .local v0, "recipient":Z
    const/16 v3, 0x97

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 891
    const/4 v0, 0x1

    .line 895
    :cond_4
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 896
    const/4 v0, 0x1

    .line 900
    :cond_5
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 901
    const/4 v0, 0x1

    .line 905
    :cond_6
    if-eqz v0, :cond_2

    .line 910
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 914
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 917
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 920
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 923
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 926
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 928
    if-ne p1, v4, :cond_7

    .line 930
    const/16 v2, 0x99

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 932
    const/16 v2, 0x9a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 936
    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 939
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 210
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 410
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 337
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 340
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 341
    .local v3, "textString":[B
    if-nez v3, :cond_1

    .line 360
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 351
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 353
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 354
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 356
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 357
    .local v1, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 358
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 359
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    .prologue
    const/16 v8, 0x8

    .line 270
    move-wide v4, p1

    .line 273
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-ge v2, v8, :cond_0

    .line 274
    ushr-long/2addr v4, v8

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 282
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 284
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 285
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 286
    add-int/lit8 v1, v1, -0x8

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 239
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 465
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 447
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 448
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 449
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 450
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 228
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 252
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 325
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 303
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 304
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 307
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 308
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 309
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x7f

    .line 377
    const-wide/16 v2, 0x7f

    .line 379
    .local v2, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 380
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 387
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 388
    mul-int/lit8 v1, v0, 0x7

    ushr-long v4, p1, v1

    .line 389
    .local v4, "temp":J
    and-long/2addr v4, v10

    .line 391
    const-wide/16 v6, 0x80

    or-long/2addr v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 393
    add-int/lit8 v0, v0, -0x1

    .line 394
    goto :goto_1

    .line 384
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    shl-long v6, v2, v1

    or-long v2, v6, v10

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_2
    and-long v6, p1, v10

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 397
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 426
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 427
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 202
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 160
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 163
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendRetrievePdu(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 180
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

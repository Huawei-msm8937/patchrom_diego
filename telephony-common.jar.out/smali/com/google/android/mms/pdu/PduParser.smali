.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 77
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 82
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 67
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 72
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 103
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 104
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 105
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 40
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 1864
    if-nez p0, :cond_0

    .line 1865
    const/16 v37, 0x0

    .line 2071
    :goto_0
    return v37

    .line 1869
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1872
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1873
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 1875
    const/16 v37, 0x0

    goto :goto_0

    .line 1879
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2068
    const/16 v37, 0x0

    goto :goto_0

    .line 1882
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1883
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 1884
    const/16 v37, 0x0

    goto :goto_0

    .line 1888
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 1889
    .local v35, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    .line 1890
    const/16 v37, 0x0

    goto :goto_0

    .line 1894
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1895
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 1896
    const/16 v37, 0x0

    goto :goto_0

    .line 1902
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1903
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 1904
    const/16 v37, 0x0

    goto :goto_0

    .line 1908
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1909
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 1910
    const/16 v37, 0x0

    goto :goto_0

    .line 1916
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1917
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 1918
    const/16 v37, 0x0

    goto :goto_0

    .line 1922
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 1923
    .local v12, "niExpiry":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v12

    if-nez v37, :cond_6

    .line 1924
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1928
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v11

    .line 1929
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_7

    .line 1930
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1934
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1935
    .local v14, "niMessageSize":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v14

    if-nez v37, :cond_8

    .line 1936
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1940
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1941
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 1942
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1948
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 1949
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 1950
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1954
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1955
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 1956
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1962
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1963
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 1964
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1968
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1969
    .local v20, "rcDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v20

    if-nez v37, :cond_15

    .line 1970
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1976
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1977
    .local v4, "diDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v4

    if-nez v37, :cond_b

    .line 1978
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1982
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1983
    .local v3, "diMessageId":[B
    if-nez v3, :cond_c

    .line 1984
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1988
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 1989
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 1990
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1994
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 1995
    .local v7, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    .line 1996
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2002
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2003
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 2004
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2010
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2011
    .local v22, "roDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v22

    if-nez v37, :cond_e

    .line 2012
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2016
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 2017
    .local v24, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    .line 2018
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2022
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2023
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 2024
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2028
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2029
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 2030
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2034
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2035
    .local v27, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    .line 2036
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2042
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2043
    .local v28, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    .line 2044
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2048
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2049
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 2050
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2054
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2055
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 2056
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2060
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2061
    .local v31, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    .line 2062
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2071
    .end local v28    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 1879
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1825
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1826
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 1854
    :cond_1
    :goto_0
    return v2

    .line 1832
    :cond_2
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 1833
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1834
    .local v0, "contentId":[B
    if-eqz v0, :cond_1

    .line 1835
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1836
    goto :goto_0

    .line 1845
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 1846
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1847
    .local v1, "contentType":[B
    if-eqz v1, :cond_1

    .line 1848
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1849
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1289
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1290
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1291
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1292
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1255
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1256
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1257
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1258
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1259
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1261
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1262
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1263
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1271
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1272
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1266
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1267
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1275
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1276
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1279
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1239
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1250
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1243
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1250
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1195
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1220
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1199
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1220
    const/4 v0, 0x1

    goto :goto_0

    .line 1199
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1015
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1593
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1595
    :cond_0
    const/4 v0, 0x0

    .line 1596
    .local v0, "contentType":[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1597
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1598
    .local v8, "temp":I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1599
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1601
    and-int/lit16 v1, v8, 0xff

    .line 1603
    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    .line 1604
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1605
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1606
    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1607
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1608
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1609
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1610
    and-int/lit16 v3, v8, 0xff

    .line 1612
    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    .line 1613
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1628
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1629
    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1630
    .local v6, "parameterLen":I
    if-lez v6, :cond_3

    .line 1631
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1634
    :cond_3
    if-gez v6, :cond_8

    .line 1635
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1645
    .end local v2    # "endPos":I
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v6    # "parameterLen":I
    .end local v7    # "startPos":I
    :goto_1
    return-object v9

    .line 1614
    .restart local v3    # "first":I
    .restart local v5    # "length":I
    .restart local v7    # "startPos":I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 1615
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1617
    .local v4, "index":I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 1618
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1621
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1624
    .end local v4    # "index":I
    :cond_6
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .line 1638
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 1639
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    .line 1645
    goto :goto_1

    .line 1641
    :cond_9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 20
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p0, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1423
    :cond_0
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-gtz v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1425
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1426
    .local v15, "startPos":I
    const/16 v16, 0x0

    .line 1427
    .local v16, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1428
    .local v11, "lastLen":I
    :goto_0
    if-lez v11, :cond_c

    .line 1429
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 1430
    .local v13, "param":I
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1431
    :cond_2
    add-int/lit8 v11, v11, -0x1

    .line 1433
    sparse-switch v13, :sswitch_data_0

    .line 1564
    const/16 v18, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1565
    const-string v18, "PduParser"

    const-string v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1449
    :sswitch_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1450
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1451
    .local v8, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1452
    const/16 v18, 0x7f

    move/from16 v0, v18

    if-le v8, v0, :cond_4

    .line 1454
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1456
    .local v10, "index":I
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 1457
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 1458
    .local v17, "type":[B
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    .end local v10    # "index":I
    .end local v17    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1471
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1472
    goto :goto_0

    .line 1464
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 1465
    .restart local v17    # "type":[B
    if-eqz v17, :cond_3

    if-eqz p1, :cond_3

    .line 1466
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1489
    .end local v8    # "first":I
    .end local v17    # "type":[B
    :sswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1490
    .local v14, "start":[B
    if-eqz v14, :cond_5

    if-eqz p1, :cond_5

    .line 1491
    const/16 v18, 0x99

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1495
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1496
    goto/16 :goto_0

    .line 1513
    .end local v14    # "start":[B
    :sswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1514
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1515
    .local v9, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1517
    const/16 v18, 0x20

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-lt v9, v0, :cond_7

    :cond_6
    if-nez v9, :cond_9

    .line 1520
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1522
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 1524
    .local v5, "charsetInt":I
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1539
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1540
    goto/16 :goto_0

    .line 1525
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v7

    .line 1527
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v18, "PduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1532
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 1533
    .local v4, "charset":I
    if-eqz p1, :cond_8

    .line 1534
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1552
    .end local v4    # "charset":I
    .end local v9    # "firstValue":I
    :sswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 1553
    .local v12, "name":[B
    if-eqz v12, :cond_a

    if-eqz p1, :cond_a

    .line 1554
    const/16 v18, 0x97

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1558
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1559
    goto/16 :goto_0

    .line 1567
    .end local v12    # "name":[B
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1573
    .end local v13    # "param":I
    :cond_c
    if-eqz v11, :cond_d

    .line 1574
    const-string v18, "PduParser"

    const-string v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_d
    return-void

    .line 1433
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1091
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1092
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1093
    const/4 v3, 0x0

    .line 1094
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1095
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1096
    .local v5, "temp":I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1097
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 1098
    .local v2, "first":I
    if-nez v2, :cond_2

    .line 1099
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 1121
    :goto_0
    return-object v7

    .line 1102
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1103
    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    .line 1104
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1106
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1109
    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1112
    .local v6, "textString":[B
    if-eqz v0, :cond_4

    .line 1113
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1121
    goto :goto_0

    .line 1115
    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1117
    :catch_0
    move-exception v1

    .line 1118
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1364
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1365
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1366
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1367
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1368
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1369
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1370
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v2, v1

    .line 1372
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 1332
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1333
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1334
    .local v4, "temp":I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v8, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1335
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1337
    .local v0, "count":I
    if-le v0, v9, :cond_2

    .line 1338
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1341
    :cond_2
    const-wide/16 v2, 0x0

    .line 1343
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1344
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1345
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v8, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1346
    :cond_3
    shl-long/2addr v2, v9

    .line 1347
    and-int/lit16 v5, v4, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1350
    :cond_4
    return-wide v2
.end method

.method protected static parseReadReport(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 6
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 876
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 877
    .local v0, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 878
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 880
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 881
    .local v1, "dataLength":I
    if-lez v1, :cond_0

    .line 882
    new-array v3, v1, [B

    .line 883
    .local v3, "partData":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 884
    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 886
    .end local v3    # "partData":[B
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 887
    return-object v0
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1309
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1310
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1311
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1312
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 1029
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1031
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1032
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1048
    :goto_0
    return v2

    .line 1036
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 1037
    shl-int/lit8 v0, v0, 0x7

    .line 1038
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1039
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1040
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1041
    goto :goto_0

    .line 1045
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1046
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1048
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1066
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1067
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1068
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1069
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1071
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1074
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 1073
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1074
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1077
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1133
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1151
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1154
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1155
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1156
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1159
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1174
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1160
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1163
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1166
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 1384
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1385
    :cond_0
    new-array v0, p1, [B

    .line 1386
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1387
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 1388
    const/4 v1, -0x1

    .line 1390
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 20

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 115
    const/4 v15, 0x0

    .line 250
    :cond_0
    :goto_0
    return-object v15

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 122
    const/4 v15, 0x0

    goto :goto_0

    .line 126
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    const/16 v19, 0x8c

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 129
    .local v9, "messageType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 130
    const-string v18, "check mandatory headers failed!"

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 131
    const/4 v15, 0x0

    goto :goto_0

    .line 134
    :cond_3
    const/4 v14, 0x0

    .line 135
    .local v14, "readreportasMessage":Z
    const/16 v18, 0x80

    move/from16 v0, v18

    if-eq v0, v9, :cond_4

    const/16 v18, 0x84

    move/from16 v0, v18

    if-ne v0, v9, :cond_7

    .line 138
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    const/16 v19, 0x8a

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v8

    .line 139
    .local v8, "messageClass":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    const/16 v19, 0x84

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 140
    .local v3, "contentType":[B
    const/4 v4, 0x0

    .line 141
    .local v4, "contentTypeStr":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 142
    new-instance v4, Ljava/lang/String;

    .end local v4    # "contentTypeStr":Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 146
    .restart local v4    # "contentTypeStr":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x84

    move/from16 v0, v18

    if-ne v9, v0, :cond_6

    if-eqz v8, :cond_6

    const-string v18, "auto"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_6

    if-eqz v4, :cond_6

    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->parseReadReport(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 150
    const/4 v14, 0x1

    .line 155
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 157
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 152
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    goto :goto_1

    .line 161
    .end local v3    # "contentType":[B
    .end local v4    # "contentTypeStr":Ljava/lang/String;
    .end local v8    # "messageClass":[B
    :cond_7
    packed-switch v9, :pswitch_data_0

    .line 249
    const-string v18, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 250
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 166
    :pswitch_0
    new-instance v17, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v17, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v15, v17

    .line 167
    goto/16 :goto_0

    .line 172
    .end local v17    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v16, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v16, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v15, v16

    .line 173
    goto/16 :goto_0

    .line 178
    .end local v16    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v10, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object v15, v10

    .line 180
    goto/16 :goto_0

    .line 185
    .end local v10    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v11, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v15, v11

    .line 187
    goto/16 :goto_0

    .line 192
    .end local v11    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v15, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 195
    .local v15, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 196
    .restart local v3    # "contentType":[B
    if-nez v3, :cond_8

    .line 197
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 199
    :cond_8
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 200
    .local v5, "ctTypeStr":Ljava/lang/String;
    const-string v18, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 207
    const-string v18, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 211
    .local v7, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 215
    .end local v7    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_9
    if-nez v14, :cond_0

    .line 219
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 224
    .end local v3    # "contentType":[B
    .end local v5    # "ctTypeStr":Ljava/lang/String;
    .end local v15    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v6, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v15, v6

    .line 226
    goto/16 :goto_0

    .line 231
    .end local v6    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v2, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v2, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v15, v2

    .line 233
    goto/16 :goto_0

    .line 238
    .end local v2    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v12, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v12, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v15, v12

    .line 240
    goto/16 :goto_0

    .line 245
    .end local v12    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v13, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v15, v13

    .line 247
    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 34
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 262
    const/4 v13, 0x0

    .line 872
    :cond_0
    :goto_0
    return-object v13

    .line 264
    :cond_1
    const/4 v14, 0x1

    .line 265
    .local v14, "keepParsing":Z
    new-instance v13, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 267
    .local v13, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v30

    if-lez v30, :cond_0

    .line 268
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 271
    .local v12, "headerField":I
    const/16 v30, 0x20

    move/from16 v0, v30

    if-lt v12, v0, :cond_3

    const/16 v30, 0x7f

    move/from16 v0, v30

    if-gt v12, v0, :cond_3

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 273
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 278
    .local v5, "bVal":[B
    goto :goto_1

    .line 280
    .end local v5    # "bVal":[B
    :cond_3
    packed-switch v12, :pswitch_data_0

    .line 867
    :pswitch_0
    const-string v30, "Unknown header"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v18

    .line 287
    .local v18, "messageType":I
    packed-switch v18, :pswitch_data_1

    .line 307
    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 308
    :catch_0
    move-exception v7

    .line 309
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Set invalid Octet value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " into the header filed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 311
    const/4 v13, 0x0

    goto :goto_0

    .line 304
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/4 v13, 0x0

    goto :goto_0

    .line 312
    :catch_1
    move-exception v7

    .line 313
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Octet header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 314
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 347
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v28

    .line 354
    .local v28, "value":I
    :try_start_1
    move/from16 v0, v28

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 355
    :catch_2
    move-exception v7

    .line 356
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Set invalid Octet value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " into the header filed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 358
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 359
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .line 360
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Octet header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 361
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 372
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v28    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v28

    .line 377
    .local v28, "value":J
    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 378
    .end local v28    # "value":J
    :catch_4
    move-exception v7

    .line 379
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 380
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 391
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v28

    .line 396
    .restart local v28    # "value":J
    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 397
    .end local v28    # "value":J
    :catch_5
    move-exception v7

    .line 398
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 399
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 425
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v28

    .line 426
    .local v28, "value":[B
    if-eqz v28, :cond_2

    .line 432
    :try_start_4
    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 433
    :catch_6
    move-exception v7

    .line 434
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v7

    .line 436
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 437
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 455
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v28    # "value":[B
    :pswitch_7
    const/16 v30, 0x96

    move/from16 v0, v30

    if-ne v0, v12, :cond_4

    .line 456
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v23

    .line 458
    .local v23, "temp":I
    move/from16 v0, v23

    and-int/lit16 v9, v0, 0xff

    .line 459
    .local v9, "first":I
    if-eqz v9, :cond_2

    .line 462
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 465
    .end local v9    # "first":I
    .end local v23    # "temp":I
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 467
    .local v28, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v28, :cond_2

    .line 473
    :try_start_5
    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 474
    :catch_8
    move-exception v7

    .line 475
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 476
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v7

    .line 477
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 478
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 489
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v28    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 491
    .restart local v28    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v28, :cond_2

    .line 492
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 493
    .local v4, "address":[B
    if-eqz v4, :cond_6

    .line 494
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 501
    .local v22, "str":Ljava/lang/String;
    const-string v30, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 502
    .local v8, "endIndex":I
    if-lez v8, :cond_5

    .line 503
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 506
    :cond_5
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 514
    .end local v8    # "endIndex":I
    .end local v22    # "str":Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 515
    :catch_a
    move-exception v7

    .line 516
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 507
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "endIndex":I
    .restart local v22    # "str":Ljava/lang/String;
    :catch_b
    move-exception v7

    .line 508
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 509
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 517
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v22    # "str":Ljava/lang/String;
    :catch_c
    move-exception v7

    .line 518
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 519
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 532
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v28    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 535
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 540
    .local v26, "token":I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v24

    .line 545
    .local v24, "timeValue":J
    const/16 v30, 0x81

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    add-long v24, v24, v30

    .line 556
    :cond_7
    :try_start_9
    move-wide/from16 v0, v24

    invoke-virtual {v13, v0, v1, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 557
    :catch_d
    move-exception v7

    .line 558
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 559
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 541
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "timeValue":J
    :catch_e
    move-exception v7

    .line 542
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 543
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 569
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "token":I
    :pswitch_a
    const/4 v10, 0x0

    .line 572
    .local v10, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_10

    .line 579
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 582
    .local v11, "fromToken":I
    const/16 v30, 0x80

    move/from16 v0, v30

    if-ne v0, v11, :cond_a

    .line 584
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 585
    if-eqz v10, :cond_9

    .line 586
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 587
    .restart local v4    # "address":[B
    if-eqz v4, :cond_9

    .line 588
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 589
    .restart local v22    # "str":Ljava/lang/String;
    const-string v30, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 590
    .restart local v8    # "endIndex":I
    if-lez v8, :cond_8

    .line 591
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 594
    :cond_8
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11

    .line 618
    .end local v4    # "address":[B
    .end local v8    # "endIndex":I
    .end local v22    # "str":Ljava/lang/String;
    :cond_9
    :goto_3
    const/16 v30, 0x89

    :try_start_c
    move/from16 v0, v30

    invoke-virtual {v13, v10, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_13

    goto/16 :goto_1

    .line 619
    :catch_f
    move-exception v7

    .line 620
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 573
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v11    # "fromToken":I
    :catch_10
    move-exception v7

    .line 574
    .local v7, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 595
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "address":[B
    .restart local v8    # "endIndex":I
    .restart local v11    # "fromToken":I
    .restart local v22    # "str":Ljava/lang/String;
    :catch_11
    move-exception v7

    .line 596
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 597
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 603
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v22    # "str":Ljava/lang/String;
    :cond_a
    :try_start_d
    new-instance v10, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v10    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v30, "insert-address-token"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_12

    .restart local v10    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_3

    .line 605
    .end local v10    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v7

    .line 606
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 607
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 621
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_13
    move-exception v7

    .line 622
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 623
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 630
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11    # "fromToken":I
    :pswitch_b
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 631
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 637
    .local v16, "messageClass":I
    const/16 v30, 0x80

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_e

    .line 640
    const/16 v30, 0x80

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 641
    :try_start_e
    const-string v30, "personal"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_15

    goto/16 :goto_1

    .line 657
    :catch_14
    move-exception v7

    .line 658
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_b
    const/16 v30, 0x81

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 645
    :try_start_f
    const-string v30, "advertisement"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    goto/16 :goto_1

    .line 659
    :catch_15
    move-exception v7

    .line 660
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 661
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 648
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_c
    const/16 v30, 0x82

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 649
    :try_start_10
    const-string v30, "informational"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 652
    :cond_d
    const/16 v30, 0x83

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 653
    const-string v30, "auto"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_15

    goto/16 :goto_1

    .line 665
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 666
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 667
    .local v17, "messageClassString":[B
    if-eqz v17, :cond_2

    .line 669
    const/16 v30, 0x8a

    :try_start_11
    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_17

    goto/16 :goto_1

    .line 670
    :catch_16
    move-exception v7

    .line 671
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v7

    .line 673
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 674
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 682
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "messageClass":I
    .end local v17    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 689
    .local v27, "version":I
    const/16 v30, 0x8d

    :try_start_12
    move/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_12
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_19

    goto/16 :goto_1

    .line 690
    :catch_18
    move-exception v7

    .line 691
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Set invalid Octet value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " into the header filed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 693
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 694
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_19
    move-exception v7

    .line 695
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Octet header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 696
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 705
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "version":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 709
    :try_start_13
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    .line 716
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 718
    .local v19, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_2

    .line 724
    const/16 v30, 0xa0

    :try_start_14
    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1c

    goto/16 :goto_1

    .line 726
    :catch_1a
    move-exception v7

    .line 727
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 710
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v19    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v7

    .line 711
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not Integer-Value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 712
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 728
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1c
    move-exception v7

    .line 729
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 730
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 740
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 744
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1e

    .line 752
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v20

    .line 757
    .local v20, "perviouslySentDate":J
    const/16 v30, 0xa1

    move-wide/from16 v0, v20

    move/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1d

    goto/16 :goto_1

    .line 759
    .end local v20    # "perviouslySentDate":J
    :catch_1d
    move-exception v7

    .line 760
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 761
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 745
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1e
    move-exception v7

    .line 746
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not Integer-Value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 747
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 778
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 781
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 784
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 800
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 803
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 807
    :try_start_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f

    goto/16 :goto_1

    .line 808
    :catch_1f
    move-exception v7

    .line 809
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not Integer-Value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 810
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 822
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 830
    :pswitch_12
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 832
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 835
    .local v6, "contentType":[B
    if-eqz v6, :cond_f

    .line 841
    const/16 v30, 0x84

    :try_start_18
    move/from16 v0, v30

    invoke-virtual {v13, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    .line 851
    :cond_f
    :goto_4
    const/16 v30, 0x99

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [B

    check-cast v30, [B

    sput-object v30, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 854
    const/16 v30, 0x83

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [B

    check-cast v30, [B

    sput-object v30, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 856
    const/4 v14, 0x0

    .line 857
    goto/16 :goto_1

    .line 842
    :catch_20
    move-exception v7

    .line 843
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 844
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_21
    move-exception v7

    .line 845
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 846
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 18
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .prologue
    .line 1658
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_0

    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1659
    :cond_0
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_1

    if-nez p2, :cond_1

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1660
    :cond_1
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_2

    if-gtz p3, :cond_2

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1678
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1679
    .local v7, "startPos":I
    const/4 v10, 0x0

    .line 1680
    .local v10, "tempPos":I
    move/from16 v5, p3

    .line 1681
    .local v5, "lastLen":I
    :cond_3
    :goto_0
    if-lez v5, :cond_11

    .line 1682
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1683
    .local v3, "header":I
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_4

    const/4 v15, -0x1

    if-ne v15, v3, :cond_4

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1684
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 1686
    const/16 v15, 0x7f

    if-le v3, v15, :cond_d

    .line 1688
    sparse-switch v3, :sswitch_data_0

    .line 1776
    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 1777
    const-string v15, "PduParser"

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v15, 0x0

    .line 1814
    .end local v3    # "header":I
    :goto_1
    return v15

    .line 1694
    .restart local v3    # "header":I
    :sswitch_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1695
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_5

    .line 1696
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1699
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1700
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1701
    goto :goto_0

    .line 1707
    .end local v2    # "contentLocation":[B
    :sswitch_1
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1708
    .local v1, "contentId":[B
    if-eqz v1, :cond_6

    .line 1709
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1712
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1713
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1714
    goto :goto_0

    .line 1730
    .end local v1    # "contentId":[B
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v15, :cond_3

    .line 1731
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1732
    .local v6, "len":I
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1733
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1734
    .local v13, "thisStartPos":I
    const/4 v12, 0x0

    .line 1735
    .local v12, "thisEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1737
    .local v14, "value":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_9

    .line 1738
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1751
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1752
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_8

    .line 1753
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1754
    const/16 v15, 0x98

    if-ne v14, v15, :cond_7

    .line 1755
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1760
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1761
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_8

    .line 1762
    sub-int v15, v13, v12

    sub-int v4, v6, v15

    .line 1763
    .local v4, "last":I
    new-array v8, v4, [B

    .line 1764
    .local v8, "temp":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1768
    .end local v4    # "last":I
    .end local v8    # "temp":[B
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1769
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1770
    goto/16 :goto_0

    .line 1739
    :cond_9
    const/16 v15, 0x81

    if-ne v14, v15, :cond_a

    .line 1740
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1741
    :cond_a
    const/16 v15, 0x82

    if-ne v14, v15, :cond_b

    .line 1742
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1744
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1746
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1780
    .end local v6    # "len":I
    .end local v12    # "thisEndPos":I
    .end local v13    # "thisStartPos":I
    .end local v14    # "value":I
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1783
    :cond_d
    const/16 v15, 0x20

    if-lt v3, v15, :cond_f

    const/16 v15, 0x7f

    if-gt v3, v15, :cond_f

    .line 1785
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    .line 1786
    .local v9, "tempHeader":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1789
    .local v11, "tempValue":[B
    const/4 v15, 0x1

    const-string v16, "Content-Transfer-Encoding"

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 1791
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1794
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1795
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1796
    goto/16 :goto_0

    .line 1801
    .end local v9    # "tempHeader":[B
    .end local v11    # "tempValue":[B
    :cond_f
    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 1802
    const-string v15, "PduParser"

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1805
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1809
    .end local v3    # "header":I
    :cond_11
    if-eqz v5, :cond_12

    .line 1810
    const-string v15, "PduParser"

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1814
    :cond_12
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1688
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 24
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 898
    if-nez p1, :cond_1

    .line 899
    const/4 v4, 0x0

    .line 1003
    :cond_0
    :goto_0
    return-object v4

    .line 902
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 903
    .local v8, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 905
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v8, :cond_0

    .line 906
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 907
    .local v12, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 908
    .local v9, "dataLength":I
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 909
    .local v16, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 910
    .local v21, "startPos":I
    if-gtz v21, :cond_2

    .line 912
    const/4 v4, 0x0

    goto :goto_0

    .line 916
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 917
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 918
    .local v7, "contentType":[B
    if-eqz v7, :cond_5

    .line 919
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 925
    :goto_2
    const/16 v22, 0x97

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v15, v22

    check-cast v15, [B

    .line 926
    .local v15, "name":[B
    if-eqz v15, :cond_3

    .line 927
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 931
    :cond_3
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 932
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 933
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 937
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 938
    .local v11, "endPos":I
    sub-int v22, v21, v11

    sub-int v20, v12, v22

    .line 939
    .local v20, "partHeaderLen":I
    if-lez v20, :cond_6

    .line 940
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v22

    if-nez v22, :cond_7

    .line 942
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 921
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v11    # "endPos":I
    .end local v15    # "name":[B
    .end local v20    # "partHeaderLen":I
    :cond_5
    sget-object v22, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 944
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v11    # "endPos":I
    .restart local v15    # "name":[B
    .restart local v20    # "partHeaderLen":I
    :cond_6
    if-gez v20, :cond_7

    .line 946
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 952
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v22

    if-nez v22, :cond_8

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 961
    :cond_8
    if-lez v9, :cond_9

    .line 962
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 963
    .local v18, "partData":[B
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 964
    .local v17, "partContentType":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 965
    const-string v22, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 967
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 969
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 994
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    :cond_9
    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v22

    if-nez v22, :cond_e

    .line 996
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 905
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 972
    .restart local v17    # "partContentType":Ljava/lang/String;
    .restart local v18    # "partData":[B
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v19

    .line 973
    .local v19, "partDataEncoding":[B
    if-eqz v19, :cond_b

    .line 974
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 975
    .local v10, "encoding":Ljava/lang/String;
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 977
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v18

    .line 985
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v18, :cond_d

    .line 986
    const-string v22, "Decode part data error!"

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 987
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 978
    .restart local v10    # "encoding":Ljava/lang/String;
    :cond_c
    const-string v22, "quoted-printable"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 980
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v18

    goto :goto_5

    .line 989
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 999
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    .end local v19    # "partDataEncoding":[B
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4
.end method

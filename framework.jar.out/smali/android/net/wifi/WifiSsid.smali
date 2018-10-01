.class public Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_RADIX:I = 0x10

.field public static final NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final TAG:Ljava/lang/String; = "WifiSsid"


# instance fields
.field public final octets:Ljava/io/ByteArrayOutputStream;

.field public oriSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->oriSsid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiSsid$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/WifiSsid$1;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/net/wifi/WifiSsid;-><init>()V

    return-void
.end method

.method private convertToBytes(Ljava/lang/String;)V
    .locals 10
    .param p1, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x37

    const/16 v7, 0x30

    const/16 v6, 0x10

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "i":I
    const/4 v3, 0x0

    .line 91
    .local v3, "val":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 93
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 170
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 99
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 109
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_0

    .line 105
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 113
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_0

    .line 117
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    goto :goto_0

    .line 121
    :sswitch_4
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_0

    .line 125
    :sswitch_5
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_0

    .line 129
    :sswitch_6
    add-int/lit8 v2, v2, 0x1

    .line 131
    add-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 135
    :goto_1
    if-gez v3, :cond_2

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 137
    if-ltz v3, :cond_0

    .line 138
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1

    .line 141
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    add-int/lit8 v2, v2, 0x2

    .line 144
    goto/16 :goto_0

    .line 153
    :sswitch_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v4, -0x30

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v8, :cond_3

    .line 156
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x30

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 159
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v8, :cond_4

    .line 160
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x30

    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 163
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "c":C
    :cond_5
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x5c -> :sswitch_1
        0x65 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 3
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 59
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;->convertToBytes(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiSsid;->oriSsid:Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method public static createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 6
    .param p0, "hexStr"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 68
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    if-nez p0, :cond_1

    .line 83
    :cond_0
    return-object v0

    .line 70
    :cond_1
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 74
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 77
    add-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 81
    .local v3, "val":I
    :goto_1
    iget-object v4, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 78
    .end local v3    # "val":I
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3    # "val":I
    goto :goto_1
.end method

.method private encodingWithCharset([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "buff"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 300
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 304
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 307
    .local v2, "out":Ljava/nio/CharBuffer;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 308
    .local v3, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 309
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    const-string v4, "<unknown ssid>"

    .line 312
    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private isArrayAllZeroes([B)Z
    .locals 2
    .param p1, "ssidBytes"    # [B

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 201
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 203
    :goto_1
    return v1

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isEncodedWithCharset([BLjava/lang/String;)Z
    .locals 6
    .param p1, "buff"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 283
    .local v2, "newString":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 284
    .local v1, "newBuff":[B
    array-length v4, p1

    array-length v5, v1

    if-ne v4, v5, :cond_0

    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 286
    aget-byte v4, p1, v0

    aget-byte v5, v1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_1

    .line 295
    .end local v0    # "i":I
    .end local v1    # "newBuff":[B
    .end local v2    # "newString":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 285
    .restart local v0    # "i":I
    .restart local v1    # "newBuff":[B
    .restart local v2    # "newString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 293
    .end local v0    # "i":I
    .end local v1    # "newBuff":[B
    .end local v2    # "newString":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getHexString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 218
    const-string v1, "0x"

    .line 219
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v2

    .line 220
    .local v2, "ssidbytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v2, v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-object v1
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 179
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 183
    .local v3, "ssidBytes":[B
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, ""

    .line 195
    :goto_0
    return-object v4

    .line 186
    :cond_1
    const-string v1, "UTF-8"

    .line 187
    .local v1, "defaultCharset":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "GBK"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "US-ASCII"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "UTF-16"

    aput-object v5, v0, v4

    .line 189
    .local v0, "charsets":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 190
    aget-object v4, v0, v2

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiSsid;->isEncodedWithCharset([BLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    aget-object v4, v0, v2

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiSsid;->encodingWithCharset([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 189
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_3
    invoke-direct {p0, v3, v1}, Landroid/net/wifi/WifiSsid;->encodingWithCharset([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 233
    iget-object v2, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v2, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 237
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiSsid;->oriSsid:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    .local v0, "buff":[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    array-length v2, v0

    if-lez v2, :cond_0

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0    # "buff":[B
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

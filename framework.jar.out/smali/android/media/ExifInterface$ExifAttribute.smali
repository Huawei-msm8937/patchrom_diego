.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 420
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 421
    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 422
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/media/ExifInterface$1;

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ExifInterface$ExifAttribute;
    .param p1, "x1"    # Ljava/nio/ByteOrder;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_0

    .line 469
    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 470
    .local v1, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 473
    .end local v1    # "bytes":[B
    :goto_0
    return-object v2

    .line 472
    :cond_0
    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 473
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    goto :goto_0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 522
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 10
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v9, 0xc

    .line 512
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v6

    aget v6, v6, v9

    array-length v7, p0

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 514
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 515
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v0, v2

    .line 516
    .local v4, "value":D
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    .end local v4    # "value":D
    :cond_0
    new-instance v6, Landroid/media/ExifInterface$ExifAttribute;

    array-length v7, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v6, v9, v7, v8}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v6
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 463
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v8, 0x9

    .line 453
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 455
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 456
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 457
    .local v4, "value":I
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v4    # "value":I
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 508
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v8, 0xa

    .line 497
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 499
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 500
    move-object v0, p0

    .local v0, "arr$":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 501
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 502
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 478
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 449
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 10
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v9, 0x4

    .line 439
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v6

    aget v6, v6, v9

    array-length v7, p0

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 441
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 442
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v0, v2

    .line 443
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v4    # "value":J
    :cond_0
    new-instance v6, Landroid/media/ExifInterface$ExifAttribute;

    array-length v7, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v6, v9, v7, v8}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v6
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 493
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x5

    .line 482
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 484
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 485
    move-object v0, p0

    .local v0, "arr$":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 486
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 487
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 435
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x3

    .line 425
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 427
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 428
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 429
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v4    # "value":I
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 18
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 532
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 534
    .local v12, "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 535
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v3, :pswitch_data_0

    .line 636
    const/4 v15, 0x0

    .line 640
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :cond_0
    :goto_0
    return-object v15

    .line 539
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_1

    .line 540
    new-instance v15, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-byte v16, v16, v17

    add-int/lit8 v16, v16, 0x30

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v3, v8

    invoke-direct {v15, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :catch_0
    move-exception v9

    .line 639
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v15, 0x0

    goto :goto_0

    .line 542
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :cond_1
    :try_start_1
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v15, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 546
    :pswitch_1
    const/4 v11, 0x0

    .line 547
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_3

    .line 548
    const/4 v13, 0x1

    .line 549
    .local v13, "same":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_2

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_5

    .line 551
    const/4 v13, 0x0

    .line 555
    :cond_2
    if-eqz v13, :cond_3

    .line 556
    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v3

    array-length v11, v3

    .line 560
    .end local v10    # "i":I
    .end local v13    # "same":Z
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_4

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    .line 563
    .local v2, "ch":I
    if-nez v2, :cond_6

    .line 573
    .end local v2    # "ch":I
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 549
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "same":Z
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 566
    .end local v10    # "i":I
    .end local v13    # "same":Z
    .restart local v2    # "ch":I
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v3, 0x20

    if-lt v2, v3, :cond_7

    .line 567
    int-to-char v3, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 572
    goto :goto_2

    .line 569
    :cond_7
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 576
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 577
    .local v15, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 578
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v15, v10

    .line 577
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 583
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [J

    .line 584
    .local v15, "values":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 585
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    aput-wide v16, v15, v10

    .line 584
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 590
    .end local v10    # "i":I
    .end local v15    # "values":[J
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [Landroid/media/ExifInterface$Rational;

    .line 591
    .local v15, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 592
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 593
    .local v4, "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 594
    .local v6, "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v15, v10

    .line 591
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 599
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    .end local v10    # "i":I
    .end local v15    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 600
    .local v15, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 601
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v3

    aput v3, v15, v10

    .line 600
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 606
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 607
    .restart local v15    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 608
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    aput v3, v15, v10

    .line 607
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 613
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [Landroid/media/ExifInterface$Rational;

    .line 614
    .local v15, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 615
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 616
    .restart local v4    # "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    .line 617
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v15, v10

    .line 614
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 622
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    .end local v10    # "i":I
    .end local v15    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 623
    .local v15, "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 624
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    aput-wide v16, v15, v10

    .line 623
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 629
    .end local v10    # "i":I
    .end local v15    # "values":[D
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 630
    .restart local v15    # "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 631
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readDouble()D

    move-result-wide v16

    aput-wide v16, v15, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 645
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 646
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 647
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 650
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 676
    :goto_0
    return-wide v2

    .line 652
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_3

    .line 653
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 654
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 655
    aget-wide v2, v0, v3

    long-to-double v2, v2

    goto :goto_0

    .line 657
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, [I

    if-eqz v2, :cond_5

    .line 660
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 661
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 662
    aget v2, v0, v3

    int-to-double v2, v2

    goto :goto_0

    .line 664
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, [D

    if-eqz v2, :cond_7

    .line 667
    check-cast v1, [D

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [D

    .line 668
    .local v0, "array":[D
    array-length v2, v0

    if-ne v2, v4, :cond_6

    .line 669
    aget-wide v2, v0, v3

    goto :goto_0

    .line 671
    :cond_6
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 673
    .end local v0    # "array":[D
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, v1, [Landroid/media/ExifInterface$Rational;

    if-eqz v2, :cond_9

    .line 674
    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 675
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v2, v0

    if-ne v2, v4, :cond_8

    .line 676
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    goto :goto_0

    .line 678
    :cond_8
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 684
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 685
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 686
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 688
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 689
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 701
    :goto_0
    return v2

    .line 691
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_3

    .line 692
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 693
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 694
    aget-wide v2, v0, v3

    long-to-int v2, v2

    goto :goto_0

    .line 696
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, [I

    if-eqz v2, :cond_5

    .line 699
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 700
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 701
    aget v2, v0, v3

    goto :goto_0

    .line 703
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 705
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x0

    .line 709
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    .line 710
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    move-object v3, v4

    .line 760
    .end local v3    # "value":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 713
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 714
    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 717
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v5, v3, [J

    if-eqz v5, :cond_4

    .line 719
    check-cast v3, [J

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [J

    .line 720
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 721
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 722
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 723
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 726
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 728
    .end local v0    # "array":[J
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v3, [I

    if-eqz v5, :cond_7

    .line 729
    check-cast v3, [I

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [I

    .line 730
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 731
    aget v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_5

    .line 733
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 736
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 738
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v5, v3, [D

    if-eqz v5, :cond_a

    .line 739
    check-cast v3, [D

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [D

    .line 740
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 741
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 742
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_8

    .line 743
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 746
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 748
    .end local v0    # "array":[D
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v5, v3, [Landroid/media/ExifInterface$Rational;

    if-eqz v5, :cond_d

    .line 749
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 750
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v1, v4, :cond_c

    .line 751
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 752
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 754
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_b

    .line 755
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 758
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_d
    move-object v3, v4

    .line 760
    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 764
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/ExifInterface;->access$200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final BEARER_TYPE_E_UTRAN:I = 0xb

.field protected static final E_UTRAN_BEARER_PARAMETERS_LEN:I = 0xa

.field protected static final PDN_TYPE_INDEX:I = 0x9

.field protected static final QCI_INDEX:I = 0x0

.field protected static final SPECIAL_QCI:I = 0x9


# instance fields
.field private bearer:Lcom/android/internal/telephony/cat/BearerDescription;

.field private bufSize:I

.field private channelStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V
    .locals 0
    .param p1, "bufSize"    # I
    .param p2, "channelStatus"    # Ljava/lang/Integer;
    .param p3, "bearer"    # Lcom/android/internal/telephony/cat/BearerDescription;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 320
    iput p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bufSize:I

    .line 321
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    .line 322
    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 323
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 329
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 330
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 331
    .local v2, "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 332
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    .end local v2    # "tag":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    if-eqz v3, :cond_2

    .line 338
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESC:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 339
    .restart local v2    # "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    const/4 v0, 0x1

    .line 341
    .local v0, "len":I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    if-eqz v3, :cond_5

    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "skipExtenedBitRateValues":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v3, v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    aget-byte v3, v3, v5

    if-ne v7, v3, :cond_1

    .line 347
    const/4 v1, 0x1

    .line 350
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipExtenedBitRateValues:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    if-eqz v1, :cond_3

    .line 353
    add-int/lit8 v0, v0, 0x2

    .line 358
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    if-eqz v1, :cond_4

    .line 362
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    aget-byte v3, v3, v5

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    aget-byte v3, v3, v7

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    .end local v0    # "len":I
    .end local v1    # "skipExtenedBitRateValues":Z
    .end local v2    # "tag":I
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 375
    .restart local v2    # "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 377
    iget v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bufSize:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    iget v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bufSize:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    return-void

    .line 355
    .restart local v0    # "len":I
    .restart local v1    # "skipExtenedBitRateValues":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v3, v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 365
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v4, v4

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 369
    .end local v1    # "skipExtenedBitRateValues":Z
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 370
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method

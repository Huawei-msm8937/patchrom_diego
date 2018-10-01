.class Lcom/android/internal/telephony/cat/ChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private channelStatus:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "channelStatus"    # [I

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->channelStatus:[I

    .line 440
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 444
    iget-object v5, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->channelStatus:[I

    if-eqz v5, :cond_1

    .line 445
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 446
    .local v4, "tag":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->channelStatus:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 447
    .local v3, "status":I
    if-lez v3, :cond_0

    .line 448
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 449
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 450
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    and-int/lit16 v5, v3, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "status":I
    .end local v4    # "tag":I
    :cond_1
    return-void
.end method

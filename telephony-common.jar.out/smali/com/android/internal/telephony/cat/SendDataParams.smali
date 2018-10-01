.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channel:I

.field data:[B

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[BLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channel"    # I
    .param p3, "data"    # [B
    .param p4, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    .line 300
    iput p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    .line 301
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    .line 302
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 303
    return-void
.end method

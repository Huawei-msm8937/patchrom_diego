.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channel:I

.field datLen:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channel"    # I
    .param p3, "datLen"    # I
    .param p4, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 281
    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    .line 282
    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    .line 287
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    .line 288
    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    .line 289
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 290
    return-void
.end method

.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field alertMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field channel:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "alertMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "channel"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->alertMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    .line 275
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->alertMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 276
    iput p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    .line 277
    return-void
.end method

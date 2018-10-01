.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

.field bufSize:I

.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field destinationAddress:[B

.field itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

.field networkAccessName:Ljava/lang/String;

.field userLogin:Ljava/lang/String;

.field userPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILcom/android/internal/telephony/cat/InterfaceTransportLevel;[BLcom/android/internal/telephony/cat/BearerDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "confirmMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "bufSize"    # I
    .param p4, "itl"    # Lcom/android/internal/telephony/cat/InterfaceTransportLevel;
    .param p5, "destinationAddress"    # [B
    .param p6, "bearerDescription"    # Lcom/android/internal/telephony/cat/BearerDescription;
    .param p7, "networkAccessName"    # Ljava/lang/String;
    .param p8, "userLogin"    # Ljava/lang/String;
    .param p9, "userPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 244
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    .line 246
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    .line 247
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    .line 248
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 249
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 259
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    .line 260
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    .line 261
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    .line 262
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 263
    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 264
    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    .line 265
    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    .line 266
    return-void
.end method

.class public Lcom/android/internal/telephony/cat/CatEventMessage;
.super Ljava/lang/Object;
.source "CatEventMessage.java"


# instance fields
.field private mAdditionalInfo:[B

.field private mDestId:I

.field private mEvent:I

.field private mOneShot:Z

.field private mSourceId:I


# direct methods
.method public constructor <init>(III[BZ)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    .line 22
    const/16 v0, 0x82

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mSourceId:I

    .line 23
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mDestId:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    .line 28
    iput p1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    .line 29
    iput p2, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mSourceId:I

    .line 30
    iput p3, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mDestId:I

    .line 31
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    .line 32
    iput-boolean p5, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    .line 33
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "additionalInfo"    # [B
    .param p3, "oneShot"    # Z

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    .line 22
    const/16 v0, 0x82

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mSourceId:I

    .line 23
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mDestId:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    .line 36
    iput p1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    .line 37
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    .line 38
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getAdditionalInfo()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    .line 55
    .local v0, "temp":[B
    return-object v0
.end method

.method public getDestId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mDestId:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    return v0
.end method

.method public getSourceId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mSourceId:I

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    return v0
.end method

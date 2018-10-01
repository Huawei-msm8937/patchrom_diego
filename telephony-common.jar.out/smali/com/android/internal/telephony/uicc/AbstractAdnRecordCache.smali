.class public Lcom/android/internal/telephony/uicc/AbstractAdnRecordCache;
.super Landroid/os/Handler;
.source "AbstractAdnRecordCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdnCountHW()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getAnrCountHW()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailCountHW()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordsSizeHW()[I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getSpareAnrCountHW()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getSpareEmailCountHW()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimAdnCountHW()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimExtensionEfForAdnEf(I)I
    .locals 1
    .param p1, "AdnEfid"    # I

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdnCountHW(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 50
    return-void
.end method

.method protected updateAdnRecordId(Lcom/android/internal/telephony/uicc/AdnRecord;II)V
    .locals 0
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "efid"    # I
    .param p3, "index"    # I

    .prologue
    .line 13
    return-void
.end method

.method public updateUsimAdnByIndexHW(ILcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "efid"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "sEf_id"    # I
    .param p4, "recordIndex"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 27
    return-void
.end method

.method public updateUsimPhoneBookRecord(Lcom/android/internal/telephony/uicc/AdnRecord;II)V
    .locals 0
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "efid"    # I
    .param p3, "index"    # I

    .prologue
    .line 67
    return-void
.end method

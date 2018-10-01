.class public Lcom/android/internal/telephony/gsm/AbstractUsimPhoneBookManager;
.super Landroid/os/Handler;
.source "AbstractUsimPhoneBookManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdnRecordsFreeSize()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnRecordsSizeAndWait(I)V
    .locals 0
    .param p1, "recNum"    # I

    .prologue
    .line 46
    return-void
.end method

.method public getAdnRecordsSizeFromEF()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-object v0
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getAnrFilesCountEachAdn()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getEFidInPBR(II)I
    .locals 1
    .param p1, "recNum"    # I
    .param p2, "tag"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailFilesCountEachAdn()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyAnrNum_Pbrindex(I)I
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyEmailNum_Pbrindex(I)I
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getInitIndexByPbr(I)I
    .locals 1
    .param p1, "pbrIndex"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getPbrFileSize()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getPbrIndexBy(I)I
    .locals 1
    .param p1, "adnIndex"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getPbrIndexByEfid(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getPhonebookRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpareAnrCount()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getSpareEmailCount()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimAdnCount()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public setIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 0
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 24
    return-void
.end method

.method public updateAnrFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "adnRecNum"    # I
    .param p2, "oldAnr"    # Ljava/lang/String;
    .param p3, "newAnr"    # Ljava/lang/String;
    .param p4, "efidIndex"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public updateEmailFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "adnRecNum"    # I
    .param p2, "oldEmail"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "efidIndex"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

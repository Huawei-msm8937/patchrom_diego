.class public Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "AbstractIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;
    }
.end annotation


# instance fields
.field protected mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwIccPhoneBookInterfaceManagerReference(Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    .line 11
    return-void
.end method


# virtual methods
.method public getAdnCountHW()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->getAdnCountHW()I

    move-result v0

    return v0
.end method

.method public getAnrCountHW()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->getAnrCountHW()I

    move-result v0

    return v0
.end method

.method public getEmailCountHW()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->getEmailCountHW()I

    move-result v0

    return v0
.end method

.method public getRecordsSizeHW()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->getRecordsSizeHW()[I

    move-result-object v0

    return-object v0
.end method

.method public getSpareAnrCountHW()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->getSpareAnrCountHW()I

    move-result v0

    return v0
.end method

.method public getSpareEmailCountHW()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->getSpareEmailCountHW()I

    move-result v0

    return v0
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearchHW(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->updateAdnRecordsWithContentValuesInEfBySearchHW(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateEfFor3gCardType(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->updateEfFor3gCardType(I)I

    move-result v0

    return v0
.end method

.method public updateUsimAdnRecordsInEfByIndexHW(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z
    .locals 9
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newEmails"    # [Ljava/lang/String;
    .param p5, "newAnrNumbers"    # [Ljava/lang/String;
    .param p6, "sEf_id"    # I
    .param p7, "index"    # I
    .param p8, "pin2"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;->mReference:Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;->updateUsimAdnRecordsInEfByIndexHW(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

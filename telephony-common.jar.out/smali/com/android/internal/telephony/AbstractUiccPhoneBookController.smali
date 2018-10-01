.class public abstract Lcom/android/internal/telephony/AbstractUiccPhoneBookController;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "AbstractUiccPhoneBookController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdnCountHW()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnCountUsingSubIdHW(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getAnrCountHW()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getAnrCountUsingSubIdHW(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailCountHW()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailCountUsingSubIdHW(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordsSizeHW()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getRecordsSizeUsingSubIdHW(I)[I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getSpareAnrCountHW()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getSpareAnrCountUsingSubIdHW(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getSpareEmailCountHW()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getSpareEmailCountUsingSubIdHW(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearchHW(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearchUsingSubIdHW(IILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimAdnRecordsInEfByIndexHW(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newEmails"    # [Ljava/lang/String;
    .param p5, "newAnrNumbers"    # [Ljava/lang/String;
    .param p6, "sEf_id"    # I
    .param p7, "index"    # I
    .param p8, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimAdnRecordsInEfByIndexUsingSubIdHW(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "newEmails"    # [Ljava/lang/String;
    .param p6, "newAnrNumbers"    # [Ljava/lang/String;
    .param p7, "sEf_id"    # I
    .param p8, "index"    # I
    .param p9, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManagerProxy;
.super Ljava/lang/Object;
.source "AbstractIccPhoneBookInterfaceManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdnCountHW()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getAnrCountHW()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailCountHW()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordsSizeHW()[I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getSpareAnrCountHW()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getSpareEmailCountHW()I
    .locals 1

    .prologue
    .line 36
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
    .line 10
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
    .line 16
    const/4 v0, 0x0

    return v0
.end method

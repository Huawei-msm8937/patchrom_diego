.class public interface abstract Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;
.super Ljava/lang/Object;
.source "AbstractIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IccPhoneBookInterfaceManagerReference"
.end annotation


# virtual methods
.method public abstract getAdnCountHW()I
.end method

.method public abstract getAnrCountHW()I
.end method

.method public abstract getEmailCountHW()I
.end method

.method public abstract getRecordsSizeHW()[I
.end method

.method public abstract getSpareAnrCountHW()I
.end method

.method public abstract getSpareEmailCountHW()I
.end method

.method public abstract updateAdnRecordsWithContentValuesInEfBySearchHW(ILandroid/content/ContentValues;Ljava/lang/String;)Z
.end method

.method public abstract updateEfFor3gCardType(I)I
.end method

.method public abstract updateUsimAdnRecordsInEfByIndexHW(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z
.end method

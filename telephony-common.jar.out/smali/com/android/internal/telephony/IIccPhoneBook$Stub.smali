.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnCountHW:I = 0xe

.field static final TRANSACTION_getAdnCountUsingSubIdHW:I = 0xf

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsInEfForSubscriber:I = 0x2

.field static final TRANSACTION_getAdnRecordsSize:I = 0x7

.field static final TRANSACTION_getAdnRecordsSizeForSubscriber:I = 0x8

.field static final TRANSACTION_getAlphaTagEncodingLength:I = 0x9

.field static final TRANSACTION_getAnrCountHW:I = 0x10

.field static final TRANSACTION_getAnrCountUsingSubIdHW:I = 0x11

.field static final TRANSACTION_getEmailCountHW:I = 0x12

.field static final TRANSACTION_getEmailCountUsingSubIdHW:I = 0x13

.field static final TRANSACTION_getRecordsSizeHW:I = 0x18

.field static final TRANSACTION_getRecordsSizeUsingSubIdHW:I = 0x19

.field static final TRANSACTION_getSpareAnrCountHW:I = 0x14

.field static final TRANSACTION_getSpareAnrCountUsingSubIdHW:I = 0x15

.field static final TRANSACTION_getSpareEmailCountHW:I = 0x16

.field static final TRANSACTION_getSpareEmailCountUsingSubIdHW:I = 0x17

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfByIndexForSubscriber:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearchForSubscriber:I = 0x4

.field static final TRANSACTION_updateAdnRecordsWithContentValuesInEfBySearchHW:I = 0xa

.field static final TRANSACTION_updateAdnRecordsWithContentValuesInEfBySearchUsingSubIdHW:I = 0xb

.field static final TRANSACTION_updateUsimAdnRecordsInEfByIndexHW:I = 0xc

.field static final TRANSACTION_updateUsimAdnRecordsInEfByIndexUsingSubIdHW:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :sswitch_0
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v11

    .line 64
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v11

    .line 76
    .restart local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 96
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 117
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 118
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 124
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_5
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    .line 136
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 142
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_6
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 155
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    .line 156
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 157
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 162
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_7
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v10

    .line 166
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 168
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 172
    .end local v1    # "_arg0":I
    .end local v10    # "_result":[I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object v10

    .line 178
    .restart local v10    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":[I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAlphaTagEncodingLength(Ljava/lang/String;)I

    move-result v10

    .line 188
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 194
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_a
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 205
    .local v2, "_arg1":Landroid/content/ContentValues;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsWithContentValuesInEfBySearchHW(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v10

    .line 207
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 202
    .end local v2    # "_arg1":Landroid/content/ContentValues;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ContentValues;
    goto :goto_5

    .line 208
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 213
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ContentValues;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_b
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 226
    .local v3, "_arg2":Landroid/content/ContentValues;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsWithContentValuesInEfBySearchUsingSubIdHW(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v10

    .line 228
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    .end local v3    # "_arg2":Landroid/content/ContentValues;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/ContentValues;
    goto :goto_7

    .line 229
    .restart local v4    # "_arg3":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 234
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/ContentValues;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_c
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 250
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg7":Ljava/lang/String;
    move-object v0, p0

    .line 251
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimAdnRecordsInEfByIndexHW(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z

    move-result v10

    .line 252
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 253
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 258
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_d
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 270
    .restart local v5    # "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "_arg5":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 274
    .restart local v7    # "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 276
    .local v8, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg8":Ljava/lang/String;
    move-object v0, p0

    .line 277
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimAdnRecordsInEfByIndexUsingSubIdHW(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Z

    move-result v10

    .line 278
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v10, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 279
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":[Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_e
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnCountHW()I

    move-result v10

    .line 286
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 292
    .end local v10    # "_result":I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 295
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnCountUsingSubIdHW(I)I

    move-result v10

    .line 296
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 302
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_10
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrCountHW()I

    move-result v10

    .line 304
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 310
    .end local v10    # "_result":I
    :sswitch_11
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrCountUsingSubIdHW(I)I

    move-result v10

    .line 314
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_12
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailCountHW()I

    move-result v10

    .line 322
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 328
    .end local v10    # "_result":I
    :sswitch_13
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailCountUsingSubIdHW(I)I

    move-result v10

    .line 332
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 338
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_14
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSpareAnrCountHW()I

    move-result v10

    .line 340
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 346
    .end local v10    # "_result":I
    :sswitch_15
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSpareAnrCountUsingSubIdHW(I)I

    move-result v10

    .line 350
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 356
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_16
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSpareEmailCountHW()I

    move-result v10

    .line 358
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 364
    .end local v10    # "_result":I
    :sswitch_17
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSpareEmailCountUsingSubIdHW(I)I

    move-result v10

    .line 368
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_18
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getRecordsSizeHW()[I

    move-result-object v10

    .line 376
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 382
    .end local v10    # "_result":[I
    :sswitch_19
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getRecordsSizeUsingSubIdHW(I)[I

    move-result-object v10

    .line 386
    .restart local v10    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

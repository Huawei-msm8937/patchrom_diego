.class public abstract Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;
.super Landroid/os/Binder;
.source "IHarassmentInterceptionService.java"

# interfaces
.implements Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

.field static final TRANSACTION_addPhoneNumberBlockItem:I = 0x2

.field static final TRANSACTION_addPhoneNumberWhiteItem:I = 0xb

.field static final TRANSACTION_checkPhoneNumberFromBlockItem:I = 0x5

.field static final TRANSACTION_checkPhoneNumberFromWhiteItem:I = 0x9

.field static final TRANSACTION_handleIncomingCallAction:I = 0x8

.field static final TRANSACTION_handleSmsDeliverAction:I = 0x7

.field static final TRANSACTION_queryPhoneNumberBlockItem:I = 0x4

.field static final TRANSACTION_queryPhoneNumberWhiteItem:I = 0xc

.field static final TRANSACTION_removePhoneNumberBlockItem:I = 0x3

.field static final TRANSACTION_removePhoneNumberFromWhiteItem:I = 0xa

.field static final TRANSACTION_sendCallBlockRecords:I = 0x6

.field static final TRANSACTION_setPhoneNumberBlockList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->setPhoneNumberBlockList(Landroid/os/Bundle;II)I

    move-result v3

    .line 60
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 66
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 75
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->addPhoneNumberBlockItem(Landroid/os/Bundle;II)I

    move-result v3

    .line 79
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 85
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_3
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 94
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->removePhoneNumberBlockItem(Landroid/os/Bundle;II)I

    move-result v3

    .line 98
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 104
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_4
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->queryPhoneNumberBlockItem()[Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 121
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->checkPhoneNumberFromBlockItem(Landroid/os/Bundle;I)I

    move-result v3

    .line 123
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 129
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 137
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->sendCallBlockRecords(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 143
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_7
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 151
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->handleSmsDeliverAction(Landroid/os/Bundle;)I

    move-result v3

    .line 152
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .line 158
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 166
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->handleIncomingCallAction(Landroid/os/Bundle;)I

    move-result v3

    .line 167
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 173
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_9
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 176
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 182
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->checkPhoneNumberFromWhiteItem(Landroid/os/Bundle;I)I

    move-result v3

    .line 184
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 190
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_a
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 193
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 199
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->removePhoneNumberFromWhiteItem(Landroid/os/Bundle;II)I

    move-result v3

    .line 203
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 209
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_b
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 212
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 218
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->addPhoneNumberWhiteItem(Landroid/os/Bundle;II)I

    move-result v3

    .line 222
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 228
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_c
    const-string v5, "com.huawei.harassmentinterception.service.IHarassmentInterceptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/huawei/harassmentinterception/service/IHarassmentInterceptionService$Stub;->queryPhoneNumberWhiteItem()[Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

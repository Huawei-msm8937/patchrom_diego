.class public abstract Landroid/vrsystem/IVRListener$Stub;
.super Landroid/os/Binder;
.source "IVRListener.java"

# interfaces
.implements Landroid/vrsystem/IVRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/vrsystem/IVRListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/vrsystem/IVRListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.vrsystem.IVRListener"

.field static final TRANSACTION_onBatteryChanged:I = 0x5

.field static final TRANSACTION_onHeartBeatChanged:I = 0x8

.field static final TRANSACTION_onHelmetChanged:I = 0x7

.field static final TRANSACTION_onModeChanged:I = 0x1

.field static final TRANSACTION_onNetworkStateChanged:I = 0x6

.field static final TRANSACTION_onNewNotification:I = 0x4

.field static final TRANSACTION_onNewSMS:I = 0x3

.field static final TRANSACTION_onPhoneStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.vrsystem.IVRListener"

    invoke-virtual {p0, p0, v0}, Landroid/vrsystem/IVRListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/vrsystem/IVRListener;
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
    const-string v1, "android.vrsystem.IVRListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/vrsystem/IVRListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/vrsystem/IVRListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/vrsystem/IVRListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/vrsystem/IVRListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 50
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onModeChanged(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/vrsystem/IVRListener$Stub;->onPhoneStateChanged(IILjava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 77
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onNewSMS(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 83
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_4
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    sget-object v4, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 91
    .local v0, "_arg0":Landroid/service/notification/StatusBarNotification;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onNewNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    goto :goto_2

    .line 97
    .end local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    :sswitch_5
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 105
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onBatteryChanged(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 103
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_3

    .line 111
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_6
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 119
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onNetworkStateChanged(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_4

    .line 125
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_7
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 128
    .local v0, "_arg0":Z
    :cond_5
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onHelmetChanged(Z)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":Z
    :sswitch_8
    const-string v4, "android.vrsystem.IVRListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 137
    .restart local v0    # "_arg0":Z
    :cond_6
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRListener$Stub;->onHeartBeatChanged(Z)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

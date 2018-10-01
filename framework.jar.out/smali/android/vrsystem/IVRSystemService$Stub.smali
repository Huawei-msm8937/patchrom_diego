.class public abstract Landroid/vrsystem/IVRSystemService$Stub;
.super Landroid/os/Binder;
.source "IVRSystemService.java"

# interfaces
.implements Landroid/vrsystem/IVRSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/vrsystem/IVRSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/vrsystem/IVRSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.vrsystem.IVRSystemService"

.field static final TRANSACTION_acceptInCall:I = 0x5

.field static final TRANSACTION_addVRListener:I = 0x3

.field static final TRANSACTION_deleteVRListener:I = 0x4

.field static final TRANSACTION_endInCall:I = 0x6

.field static final TRANSACTION_getContactName:I = 0x2

.field static final TRANSACTION_isVRmode:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.vrsystem.IVRSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/vrsystem/IVRSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/vrsystem/IVRSystemService;
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
    const-string v1, "android.vrsystem.IVRSystemService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/vrsystem/IVRSystemService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/vrsystem/IVRSystemService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/vrsystem/IVRSystemService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/vrsystem/IVRSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/vrsystem/IVRSystemService$Stub;->isVRmode()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRSystemService$Stub;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/vrsystem/IVRListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/vrsystem/IVRListener;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Landroid/vrsystem/IVRListener;
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRSystemService$Stub;->addVRListener(Landroid/vrsystem/IVRListener;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Landroid/vrsystem/IVRListener;
    :sswitch_4
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/vrsystem/IVRListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/vrsystem/IVRListener;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Landroid/vrsystem/IVRListener;
    invoke-virtual {p0, v0}, Landroid/vrsystem/IVRSystemService$Stub;->deleteVRListener(Landroid/vrsystem/IVRListener;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Landroid/vrsystem/IVRListener;
    :sswitch_5
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/vrsystem/IVRSystemService$Stub;->acceptInCall()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :sswitch_6
    const-string v2, "android.vrsystem.IVRSystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/vrsystem/IVRSystemService$Stub;->endInCall()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/hardware/IPostCameraService$Stub;
.super Landroid/os/Binder;
.source "IPostCameraService.java"

# interfaces
.implements Landroid/hardware/IPostCameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/IPostCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IPostCameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.IPostCameraService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.IPostCameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/IPostCameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/IPostCameraService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.IPostCameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/IPostCameraService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/IPostCameraService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/IPostCameraService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/IPostCameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v6, "android.hardware.IPostCameraService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.hardware.IPostCameraService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/IPostCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IPostCameraClient;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Landroid/hardware/IPostCameraClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg2":I
    new-instance v3, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v3}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 57
    .local v3, "_arg3":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/IPostCameraService$Stub;->connect(Landroid/hardware/IPostCameraClient;Ljava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v4

    .line 58
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v3, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 65
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/hardware/IPostCameraClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "android.hardware.IPostCameraService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {p0, v0}, Landroid/hardware/IPostCameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)I

    move-result v4

    .line 75
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "android.hardware.IPostCameraService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {p0, v0}, Landroid/hardware/IPostCameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)I

    move-result v4

    .line 85
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

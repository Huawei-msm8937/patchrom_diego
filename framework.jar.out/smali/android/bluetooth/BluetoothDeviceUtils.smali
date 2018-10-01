.class public Landroid/bluetooth/BluetoothDeviceUtils;
.super Ljava/lang/Object;
.source "BluetoothDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 7
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    return-object v0
.end method

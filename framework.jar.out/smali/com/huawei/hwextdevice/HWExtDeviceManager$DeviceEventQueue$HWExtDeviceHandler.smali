.class Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;
.super Landroid/os/Handler;
.source "HWExtDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HWExtDeviceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;


# direct methods
.method public constructor <init>(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;->this$0:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .line 760
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 761
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;->this$0:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    # getter for: Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    invoke-static {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->access$300(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;)Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;->this$0:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    # getter for: Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    invoke-static {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->access$300(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;)Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;

    invoke-interface {v1, v0}, Lcom/huawei/hwextdevice/HWExtDeviceEventListener;->onDeviceDataChanged(Lcom/huawei/hwextdevice/HWExtDeviceEvent;)V

    .line 767
    :cond_0
    return-void
.end method

.class Lcom/android/server/usb/UsbDeviceManager$2;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    const-string v2, "Discharging"

    const-string v3, "POWER_SUPPLY_STATUS"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 295
    .local v0, "power_state":Z
    const-string v2, "sys.usb.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 296
    .local v1, "usb_state":Z
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "power_state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " usb_state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 304
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUSBPlugType:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "UsbDeviceManager"

    const-string v3, "status = none and powering and connect"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mPowerCharging:Z
    invoke-static {v2, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 308
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mLastChargingState:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mSystemReady:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mLastChargingState:Z
    invoke-static {v2, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 313
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 327
    :cond_3
    :goto_0
    return-void

    .line 314
    :cond_4
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUSBPlugType:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 315
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "UsbDeviceManager"

    const-string v3, "status = none and notpowering and notconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_5
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mPowerCharging:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 317
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mLastChargingState:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 319
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mSystemReady:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 320
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 323
    :cond_6
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    goto :goto_0

    .line 324
    :cond_7
    if-nez v1, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mPowerCharging:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    goto :goto_0
.end method

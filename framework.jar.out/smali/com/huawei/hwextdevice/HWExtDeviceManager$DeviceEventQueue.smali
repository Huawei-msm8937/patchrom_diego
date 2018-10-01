.class final Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
.super Ljava/lang/Object;
.source "HWExtDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hwextdevice/HWExtDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeviceEventQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;
    }
.end annotation


# instance fields
.field private DEVICE_MSG_TYPE_RESULT:I

.field private mActiveDevices:Landroid/util/SparseBooleanArray;

.field private mDeviceEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/huawei/hwextdevice/HWExtDeviceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

.field private mDeviceValues:[F

.field private mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

.field private nDevcieEventQueue:J


# direct methods
.method public constructor <init>(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->DEVICE_MSG_TYPE_RESULT:I

    .line 496
    iput-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    .line 498
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    .line 500
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    .line 513
    const/16 v1, 0x1f4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceValues:[F

    .line 517
    iput-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    .line 526
    iput-object p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    .line 529
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 530
    new-instance v1, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    .line 536
    :goto_0
    const-string v1, "HWExtDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motion DeviceEventQueue mDeviceHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceValues:[F

    invoke-virtual {p0, p0, v1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nativeCreateEventQueue(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;[F)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nDevcieEventQueue:J

    .line 539
    return-void

    .line 531
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    new-instance v1, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    goto :goto_0

    .line 534
    :cond_1
    iput-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->DEVICE_MSG_TYPE_RESULT:I

    .line 496
    iput-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    .line 498
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    .line 500
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    .line 513
    const/16 v1, 0x1f4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceValues:[F

    .line 517
    iput-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    .line 548
    iput-object p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    .line 551
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 552
    new-instance v1, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    .line 560
    :goto_0
    const-string v1, "HWExtDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motion DeviceEventQueue mDeviceHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceValues:[F

    invoke-virtual {p0, p0, v1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nativeCreateEventQueue(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;[F)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nDevcieEventQueue:J

    .line 563
    return-void

    .line 553
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 554
    new-instance v1, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    goto :goto_0

    .line 555
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 556
    new-instance v1, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    goto :goto_0

    .line 558
    :cond_2
    iput-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;)Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mListener:Lcom/huawei/hwextdevice/HWExtDeviceEventListener;

    return-object v0
.end method

.method private addDeviceEvent(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 600
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 601
    new-instance v0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;

    invoke-interface {p1}, Lcom/huawei/hwextdevice/devices/IHWExtDevice;->getMaxLenValueArray()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;-><init>(I)V

    .line 602
    .local v0, "deviceEvent":Lcom/huawei/hwextdevice/HWExtDeviceEvent;
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    # invokes: Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I
    invoke-static {p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$000(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    .end local v0    # "deviceEvent":Lcom/huawei/hwextdevice/HWExtDeviceEvent;
    :cond_0
    return-void
.end method

.method private disableDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    const/4 v0, 0x1

    .line 747
    iget-wide v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nDevcieEventQueue:J

    invoke-virtual {p0, v2, v3, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nativeDisableDevice(JLcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 750
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    const/4 v0, 0x1

    .line 734
    iget-wide v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nDevcieEventQueue:J

    invoke-virtual {p0, v2, v3, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nativeEnableDevice(JLcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeDeviceEvent(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    # invokes: Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I
    invoke-static {p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$000(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 615
    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 573
    # invokes: Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I
    invoke-static {p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$000(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v0

    .line 578
    .local v0, "deviceUniqueId":I
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    const-string v2, "HWExtDeviceManager"

    const-string v3, "addDevice device has been activated with this listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v1, 0x0

    .line 591
    :goto_0
    return v1

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 588
    invoke-direct {p0, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->addDeviceEvent(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V

    .line 590
    invoke-direct {p0, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->enableDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    move-result v1

    .line 591
    .local v1, "res":Z
    goto :goto_0
.end method

.method protected dispatchDeviceEvent(Lcom/huawei/hwextdevice/HWExtDeviceEvent;)V
    .locals 7
    .param p1, "deviceEvent"    # Lcom/huawei/hwextdevice/HWExtDeviceEvent;

    .prologue
    .line 690
    if-nez p1, :cond_1

    .line 691
    const-string v4, "HWExtDeviceManager"

    const-string v5, "Error: deviceEvent is nullt"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getDeviceType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 696
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getDeviceType()I

    move-result v4

    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getSubDeviceType()I

    move-result v5

    # invokes: Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(II)I
    invoke-static {v4, v5}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$200(II)I

    move-result v1

    .line 697
    .local v1, "deviceUniqueId":I
    # getter for: Lcom/huawei/hwextdevice/HWExtDeviceManager;->sHandleToDeviceList:Landroid/util/SparseArray;
    invoke-static {}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$100()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .line 702
    .local v0, "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hwextdevice/HWExtDeviceEvent;

    .line 703
    .local v3, "tmpDeviceEvent":Lcom/huawei/hwextdevice/HWExtDeviceEvent;
    invoke-virtual {v3, v0}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->setDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V

    .line 704
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getDeviceType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->setDeviceType(I)V

    .line 705
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getSubDeviceType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->setSubDeviceType(I)V

    .line 706
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getDeviceValues()[F

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getDeviceValuesLen()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->setDeviceValues([FI)V

    .line 709
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    if-eqz v4, :cond_2

    .line 711
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    iget v5, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->DEVICE_MSG_TYPE_RESULT:I

    invoke-virtual {v3}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 712
    .local v2, "motioMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mDeviceHandler:Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;

    invoke-virtual {v4, v2}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue$HWExtDeviceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 714
    .end local v2    # "motioMsg":Landroid/os/Message;
    :cond_2
    const-string v4, "HWExtDeviceManager"

    const-string v5, "motion dispatchDeviceEvent mDeviceHandler is null ...... "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 675
    iget-wide v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nDevcieEventQueue:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->nativeDestroyEventQueue(J)V

    .line 677
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 679
    return-void
.end method

.method public hasDevices()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 643
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_0

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native nativeCreateEventQueue(Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;[F)J
.end method

.method public native nativeDestroyEventQueue(J)V
.end method

.method public native nativeDisableDevice(JLcom/huawei/hwextdevice/devices/IHWExtDevice;)I
.end method

.method public native nativeEnableDevice(JLcom/huawei/hwextdevice/devices/IHWExtDevice;)I
.end method

.method public removeAllDevices()Z
    .locals 5

    .prologue
    .line 655
    const/4 v1, -0x1

    .line 656
    .local v1, "deviceUniqueId":I
    const/4 v0, 0x0

    .line 657
    .local v0, "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 658
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 659
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 661
    # getter for: Lcom/huawei/hwextdevice/HWExtDeviceManager;->sHandleToDeviceList:Landroid/util/SparseArray;
    invoke-static {}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$100()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    check-cast v0, Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .line 662
    .restart local v0    # "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    invoke-direct {p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->disableDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    .line 664
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 665
    invoke-direct {p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->removeDeviceEvent(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V

    .line 657
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public removeDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "res":Z
    # invokes: Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I
    invoke-static {p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->access$000(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v0

    .line 629
    .local v0, "deviceUniqueId":I
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-direct {p0, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->disableDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    move-result v1

    .line 631
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->mActiveDevices:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 632
    invoke-direct {p0, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->removeDeviceEvent(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V

    .line 634
    :cond_0
    return v1
.end method

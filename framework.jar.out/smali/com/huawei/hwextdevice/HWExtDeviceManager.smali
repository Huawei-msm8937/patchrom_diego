.class public Lcom/huawei/hwextdevice/HWExtDeviceManager;
.super Ljava/lang/Object;
.source "HWExtDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    }
.end annotation


# static fields
.field public static final DEBUG_FLAG:Z = false

.field private static final DEVICE_KEY_RATE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "HWExtDeviceManager"

.field private static mInstance:Lcom/huawei/hwextdevice/HWExtDeviceManager;

.field private static sDeviceModuleLock:Ljava/lang/Object;

.field private static final sHandleToDeviceList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/huawei/hwextdevice/devices/IHWExtDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/huawei/hwextdevice/HWExtDeviceEventListener;",
            "Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mFullDevicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hwextdevice/devices/IHWExtDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHWExtDeviceTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sDeviceModuleInitialized:Z

.field private sFullDeviceGetOver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mInstance:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sHandleToDeviceList:Landroid/util/SparseArray;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    .line 122
    iput-boolean v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleInitialized:Z

    .line 124
    iput-boolean v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sFullDeviceGetOver:Z

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mContext:Landroid/content/Context;

    .line 135
    iput-object p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mContext:Landroid/content/Context;

    .line 136
    const-string v0, "HWExtDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motion HWExtDeviceManager getInstance sDeviceModuleInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleInitialized:Z

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->nativeInit(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->getFullHWExtDeviceList()Ljava/util/List;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleInitialized:Z

    .line 143
    :cond_0
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sHandleToDeviceList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(II)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized destroyInstance()V
    .locals 2

    .prologue
    .line 232
    const-class v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mInstance:Lcom/huawei/hwextdevice/HWExtDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit v0

    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDeviceByType(I)Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    .locals 2
    .param p1, "hwextDeviceType"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    packed-switch p1, :pswitch_data_0

    .line 464
    :goto_0
    return-object v0

    .line 459
    :pswitch_0
    new-instance v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;

    .end local v0    # "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/huawei/hwextdevice/devices/HWExtMotion;-><init>(I)V

    .line 460
    .restart local v0    # "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDeviceUniqueId(II)I
    .locals 2
    .param p0, "deviceType"    # I
    .param p1, "deviceSubType"    # I

    .prologue
    .line 479
    mul-int/lit8 v1, p1, 0x64

    add-int v0, v1, p0

    .line 480
    .local v0, "uniqueId":I
    return v0
.end method

.method private static getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I
    .locals 3
    .param p0, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 474
    invoke-interface {p0}, Lcom/huawei/hwextdevice/devices/IHWExtDevice;->getHWExtDeviceSubType()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-interface {p0}, Lcom/huawei/hwextdevice/devices/IHWExtDevice;->getHWExtDeviceType()I

    move-result v2

    add-int v0, v1, v2

    .line 475
    .local v0, "uniqueId":I
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/hwextdevice/HWExtDeviceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const-class v1, Lcom/huawei/hwextdevice/HWExtDeviceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mInstance:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;

    invoke-direct {v0, p0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mInstance:Lcom/huawei/hwextdevice/HWExtDeviceManager;

    .line 160
    :cond_0
    sget-object v0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mInstance:Lcom/huawei/hwextdevice/HWExtDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativeDispose()V
.end method

.method private native nativeGetDeviceList()I
.end method

.method private native nativeInit(Z)V
.end method

.method private setDeviceList([Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V
    .locals 7
    .param p1, "deviceArr"    # [Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 413
    if-nez p1, :cond_1

    .line 414
    const-string v4, "HWExtDeviceManager"

    const-string v5, "motion setDeviceList deviceArr is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    return-void

    .line 420
    :cond_1
    const/4 v2, 0x0

    .line 423
    .local v2, "hwextDeviceType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 424
    aget-object v0, p1, v3

    .line 425
    .local v0, "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    if-nez v0, :cond_2

    .line 423
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    :cond_2
    iget-object v5, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 430
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v4, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sHandleToDeviceList:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->getDeviceUniqueId(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    invoke-interface {v0}, Lcom/huawei/hwextdevice/devices/IHWExtDevice;->getHWExtDeviceType()I

    move-result v2

    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 437
    .local v1, "deviceType":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 438
    :try_start_1
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 439
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 432
    .end local v1    # "deviceType":Ljava/lang/Integer;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method


# virtual methods
.method public dispose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 203
    .local v0, "listenerSize":I
    if-lez v0, :cond_0

    .line 204
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeviceListenerMap is not empty, please ungrister all devices first listenerSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    .end local v0    # "listenerSize":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listenerSize":I
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-direct {p0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->nativeDispose()V

    .line 210
    invoke-static {}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->destroyInstance()V

    .line 211
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 212
    :try_start_2
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 214
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 219
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 221
    iput-boolean v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sFullDeviceGetOver:Z

    .line 222
    iput-boolean v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sDeviceModuleInitialized:Z

    .line 224
    return-void

    .line 214
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 219
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public getFullHWExtDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hwextdevice/devices/IHWExtDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-boolean v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sFullDeviceGetOver:Z

    if-nez v1, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->nativeGetDeviceList()I

    move-result v0

    .line 360
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sFullDeviceGetOver:Z

    .line 372
    .end local v0    # "size":I
    :cond_0
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    monitor-exit v2

    return-object v1

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHWExtDeviceTypes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mHWExtDeviceTypeList:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHWExtSubDeviceList(I)Ljava/util/List;
    .locals 6
    .param p1, "hwextDeviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hwextdevice/devices/IHWExtDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, "device":Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v1, "devcieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/hwextdevice/devices/IHWExtDevice;>;"
    iget-boolean v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->sFullDeviceGetOver:Z

    if-eqz v4, :cond_2

    .line 391
    iget-object v5, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 392
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 393
    iget-object v4, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mFullDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    move-object v2, v0

    .line 394
    invoke-interface {v2}, Lcom/huawei/hwextdevice/devices/IHWExtDevice;->getHWExtDeviceType()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 395
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_1
    monitor-exit v5

    .line 402
    .end local v3    # "i":I
    :goto_1
    return-object v1

    .line 398
    .restart local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 400
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hwextdevice/HWExtDeviceManager;->getFullHWExtDeviceList()Ljava/util/List;

    goto :goto_1
.end method

.method public registerDeviceListener(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z
    .locals 3
    .param p1, "listener"    # Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    .param p2, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 247
    if-nez p2, :cond_0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "device cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .line 253
    .local v0, "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    if-nez v0, :cond_2

    .line 254
    new-instance v0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .end local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    invoke-direct {v0, p1}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;)V

    .line 255
    .restart local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v0, p2}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->addDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    const/4 v1, 0x0

    monitor-exit v2

    .line 261
    :goto_0
    return v1

    .line 259
    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 263
    .end local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 261
    .restart local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->addDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerDeviceListener(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Lcom/huawei/hwextdevice/devices/IHWExtDevice;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "listener"    # Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    .param p2, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 279
    if-nez p2, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "device cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .line 285
    .local v0, "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    if-nez v0, :cond_2

    .line 286
    new-instance v0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .end local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    invoke-direct {v0, p1, p3}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;-><init>(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Landroid/os/Handler;)V

    .line 287
    .restart local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {v0, p2}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->addDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const/4 v1, 0x0

    monitor-exit v2

    .line 293
    :goto_0
    return v1

    .line 291
    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 295
    .end local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 293
    .restart local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->addDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterDeviceListener(Lcom/huawei/hwextdevice/HWExtDeviceEventListener;Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z
    .locals 3
    .param p1, "listener"    # Lcom/huawei/hwextdevice/HWExtDeviceEventListener;
    .param p2, "device"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 311
    iget-object v2, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;

    .line 313
    .local v0, "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    if-eqz v0, :cond_2

    .line 314
    if-nez p2, :cond_1

    .line 315
    invoke-virtual {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->removeAllDevices()Z

    .line 319
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->hasDevices()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->dispose()V

    .line 324
    iget-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceManager;->mDeviceListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    .line 333
    :goto_1
    return v1

    .line 317
    :cond_1
    invoke-virtual {v0, p2}, Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;->removeDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)Z

    goto :goto_0

    .line 332
    .end local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "queue":Lcom/huawei/hwextdevice/HWExtDeviceManager$DeviceEventQueue;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    const/4 v1, 0x0

    goto :goto_1
.end method

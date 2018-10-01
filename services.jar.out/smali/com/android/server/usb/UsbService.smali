.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 95
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    .line 148
    new-instance v3, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 116
    new-instance v3, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 118
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 119
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 122
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/android/server/usb/HwUsbServiceFactory;->getHuaweiUsbDeviceManager()Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;

    move-result-object v1

    .line 126
    .local v1, "iudm":Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;
    if-eqz v1, :cond_4

    .line 127
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-interface {v1, p1, v3}, Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;->getInstance(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 134
    .end local v1    # "iudm":Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_3

    .line 135
    :cond_2
    new-instance v3, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 138
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 142
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    return-void

    .line 129
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "iudm":Lcom/android/server/usb/HwUsbServiceFactory$IHwUsbDeviceManager;
    :cond_4
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbSettingsManager;

    .line 105
    .local v0, "settings":Lcom/android/server/usb/UsbSettingsManager;
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 107
    .restart local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_0
    monitor-exit v2

    return-object v0

    .line 110
    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isSupportedCurrentFunction(Ljava/lang/String;)Z
    .locals 4
    .param p0, "function"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 325
    if-nez p0, :cond_0

    .line 346
    :goto_0
    :pswitch_0
    return v0

    .line 327
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 346
    goto :goto_0

    .line 327
    :sswitch_0
    const-string v3, "none"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "audio_source"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v3, "midi"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "mtp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "ptp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "rndis"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "rndis,serial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "hisuite,mtp,mass_storage"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "hisuite,mtp,mass_storage,hdb"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "mass_storage"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "manufacture,adb"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55c6135c -> :sswitch_1
        -0x15935cfe -> :sswitch_8
        0x1a7a9 -> :sswitch_3
        0x1b2ec -> :sswitch_4
        0x332321 -> :sswitch_2
        0x33af38 -> :sswitch_0
        0x679fcd2 -> :sswitch_5
        0x18cba534 -> :sswitch_a
        0x2546bc30 -> :sswitch_9
        0x2fdd800e -> :sswitch_6
        0x53a633c8 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    .line 170
    .local v0, "userSettings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbHostManager;->setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V

    .line 176
    :cond_1
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 362
    return-void
.end method

.method public bootCompleted()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 196
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    .line 374
    return-void
.end method

.method public denyUsbDebugging()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    .line 368
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v17, "android.permission.DUMP"

    const-string v18, "UsbService"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 422
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 424
    .local v12, "ident":J
    if-eqz p3, :cond_0

    :try_start_0
    move-object/from16 v0, p3

    array-length v2, v0

    if-eqz v2, :cond_0

    const-string v2, "-a"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 425
    :cond_0
    const-string v2, "USB Manager State:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 433
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_3

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 436
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 441
    .local v16, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usb/UsbSettingsManager;

    .line 442
    .local v14, "settings":Lcom/android/server/usb/UsbSettingsManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Settings for user "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 444
    invoke-virtual {v14, v10}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 445
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 439
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 447
    .end local v14    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    .end local v16    # "userId":I
    :cond_4
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    .end local v11    # "i":I
    :cond_5
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 626
    :goto_2
    return-void

    .line 447
    .restart local v11    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 624
    .end local v11    # "i":I
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 448
    :cond_6
    :try_start_4
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    const-string v2, "set-port-roles"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 449
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 451
    .local v3, "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v17, p3, v2

    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_7
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid power role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 451
    :sswitch_0
    :try_start_5
    const-string v18, "source"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_1
    const-string v18, "sink"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_2
    const-string v18, "no-power"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v2, 0x2

    goto :goto_3

    .line 453
    :pswitch_0
    const/4 v6, 0x1

    .line 466
    .local v6, "powerRole":I
    :goto_4
    const/4 v2, 0x3

    aget-object v17, p3, v2

    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_1

    :cond_8
    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid data role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 456
    .end local v6    # "powerRole":I
    :pswitch_1
    const/4 v6, 0x2

    .line 457
    .restart local v6    # "powerRole":I
    goto :goto_4

    .line 459
    .end local v6    # "powerRole":I
    :pswitch_2
    const/4 v6, 0x0

    .line 460
    .restart local v6    # "powerRole":I
    goto :goto_4

    .line 466
    :sswitch_3
    :try_start_6
    const-string v18, "host"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v2, 0x0

    goto :goto_5

    :sswitch_4
    const-string v18, "device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :sswitch_5
    const-string v18, "no-data"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v2, 0x2

    goto :goto_5

    .line 468
    :pswitch_3
    const/4 v8, 0x1

    .line 480
    .local v8, "dataRole":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v6, v8, v10}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 487
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 471
    .end local v8    # "dataRole":I
    :pswitch_4
    const/4 v8, 0x2

    .line 472
    .restart local v8    # "dataRole":I
    goto :goto_6

    .line 474
    .end local v8    # "dataRole":I
    :pswitch_5
    const/4 v8, 0x0

    .line 475
    .restart local v8    # "dataRole":I
    goto :goto_6

    .line 490
    .end local v3    # "portId":Ljava/lang/String;
    .end local v6    # "powerRole":I
    .end local v8    # "dataRole":I
    :cond_9
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v2, v0, :cond_b

    const-string v2, "add-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 491
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 493
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v17, p3, v2

    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2

    :cond_a
    :goto_7
    packed-switch v2, :pswitch_data_2

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid mode: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 493
    :sswitch_6
    :try_start_7
    const-string v18, "ufp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v2, 0x0

    goto :goto_7

    :sswitch_7
    const-string v18, "dfp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v2, 0x1

    goto :goto_7

    :sswitch_8
    const-string v18, "dual"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v2, 0x2

    goto :goto_7

    :sswitch_9
    const-string v18, "none"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v2, 0x3

    goto :goto_7

    .line 495
    :pswitch_6
    const/4 v15, 0x2

    .line 510
    .local v15, "supportedModes":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v15, v10}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 512
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 498
    .end local v15    # "supportedModes":I
    :pswitch_7
    const/4 v15, 0x1

    .line 499
    .restart local v15    # "supportedModes":I
    goto :goto_8

    .line 501
    .end local v15    # "supportedModes":I
    :pswitch_8
    const/4 v15, 0x3

    .line 502
    .restart local v15    # "supportedModes":I
    goto :goto_8

    .line 504
    .end local v15    # "supportedModes":I
    :pswitch_9
    const/4 v15, 0x0

    .line 505
    .restart local v15    # "supportedModes":I
    goto :goto_8

    .line 515
    .end local v3    # "portId":Ljava/lang/String;
    .end local v15    # "supportedModes":I
    :cond_b
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v2, v0, :cond_12

    const-string v2, "connect-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 516
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 518
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p3, v2

    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 519
    .local v5, "canChangeMode":Z
    if-eqz v5, :cond_d

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_9
    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_3

    :cond_c
    :goto_a
    packed-switch v2, :pswitch_data_3

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid mode: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 519
    :cond_d
    const/4 v2, 0x2

    :try_start_8
    aget-object v2, p3, v2

    move-object/from16 v17, v2

    goto :goto_9

    :sswitch_a
    const-string v18, "ufp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v2, 0x0

    goto :goto_a

    :sswitch_b
    const-string v18, "dfp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v2, 0x1

    goto :goto_a

    .line 521
    :pswitch_a
    const/4 v4, 0x2

    .line 531
    .local v4, "mode":I
    :goto_b
    const/4 v2, 0x3

    aget-object v2, p3, v2

    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 532
    .local v7, "canChangePowerRole":Z
    if-eqz v7, :cond_f

    const/4 v2, 0x3

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_c
    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_4

    :cond_e
    :goto_d
    packed-switch v2, :pswitch_data_4

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid power role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 524
    .end local v4    # "mode":I
    .end local v7    # "canChangePowerRole":Z
    :pswitch_b
    const/4 v4, 0x1

    .line 525
    .restart local v4    # "mode":I
    goto :goto_b

    .line 532
    .restart local v7    # "canChangePowerRole":Z
    :cond_f
    const/4 v2, 0x3

    :try_start_9
    aget-object v2, p3, v2

    move-object/from16 v17, v2

    goto :goto_c

    :sswitch_c
    const-string v18, "source"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v2, 0x0

    goto :goto_d

    :sswitch_d
    const-string v18, "sink"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v2, 0x1

    goto :goto_d

    .line 534
    :pswitch_c
    const/4 v6, 0x1

    .line 544
    .restart local v6    # "powerRole":I
    :goto_e
    const/4 v2, 0x4

    aget-object v2, p3, v2

    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 545
    .local v9, "canChangeDataRole":Z
    if-eqz v9, :cond_11

    const/4 v2, 0x4

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_f
    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_5

    :cond_10
    :goto_10
    packed-switch v2, :pswitch_data_5

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid data role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x4

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 537
    .end local v6    # "powerRole":I
    .end local v9    # "canChangeDataRole":Z
    :pswitch_d
    const/4 v6, 0x2

    .line 538
    .restart local v6    # "powerRole":I
    goto :goto_e

    .line 545
    .restart local v9    # "canChangeDataRole":Z
    :cond_11
    const/4 v2, 0x4

    :try_start_a
    aget-object v2, p3, v2

    move-object/from16 v17, v2

    goto :goto_f

    :sswitch_e
    const-string v18, "host"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v2, 0x0

    goto :goto_10

    :sswitch_f
    const-string v18, "device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v2, 0x1

    goto :goto_10

    .line 547
    :pswitch_e
    const/4 v8, 0x1

    .line 556
    .restart local v8    # "dataRole":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 559
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 550
    .end local v8    # "dataRole":I
    :pswitch_f
    const/4 v8, 0x2

    .line 551
    .restart local v8    # "dataRole":I
    goto :goto_11

    .line 562
    .end local v3    # "portId":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v5    # "canChangeMode":Z
    .end local v6    # "powerRole":I
    .end local v7    # "canChangePowerRole":Z
    .end local v8    # "dataRole":I
    .end local v9    # "canChangeDataRole":Z
    :cond_12
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_13

    const-string v2, "disconnect-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 563
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 564
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 566
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 569
    .end local v3    # "portId":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_14

    const-string v2, "remove-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 570
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 571
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 573
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 576
    .end local v3    # "portId":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_15

    const-string v2, "reset"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 579
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 582
    :cond_15
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_16

    const-string v2, "ports"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_5

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_1

    .line 587
    :cond_16
    const-string v2, "Dump current USB state or issue command:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const-string v2, "  ports"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    const-string v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v2, "  disconnect-port <id>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v2, "  remove-port <id>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v2, "  reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 597
    const-string v2, "Example USB type C port role switch:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 600
    const-string v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v2, "  dumpsys usb ports"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 608
    const-string v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 610
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 613
    const-string v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 618
    const-string v2, "Example USB device-only port:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const-string v2, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 621
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        -0x356f97e5 -> :sswitch_0
        -0x1a426a07 -> :sswitch_2
        0x35de93 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 466
    :sswitch_data_1
    .sparse-switch
        -0x4f94e1aa -> :sswitch_4
        0x30f5a8 -> :sswitch_3
        0x7b007436 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 493
    :sswitch_data_2
    .sparse-switch
        0x1842e -> :sswitch_7
        0x1c3ff -> :sswitch_6
        0x2f387c -> :sswitch_8
        0x33af38 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 519
    :sswitch_data_3
    .sparse-switch
        0x1842e -> :sswitch_b
        0x1c3ff -> :sswitch_a
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 532
    :sswitch_data_4
    .sparse-switch
        -0x356f97e5 -> :sswitch_c
        0x35de93 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 545
    :sswitch_data_5
    .sparse-switch
        -0x4f94e1aa -> :sswitch_f
        0x30f5a8 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "devices"    # Landroid/os/Bundle;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 204
    :cond_0
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 5
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 390
    const-string v3, "portId must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_USB"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 395
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 397
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_USB"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 382
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 384
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 284
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 285
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 277
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 278
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 256
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 257
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 250
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 251
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 269
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 270
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 271
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 262
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 263
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 264
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USB"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 309
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 310
    .local v0, "pid":I
    const/16 v2, 0x51a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbService Caller of setCurrentFunction is uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 311
    invoke-static {p1}, Lcom/android/server/usb/UsbService;->isSupportedCurrentFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const-string v2, "UsbService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller of setCurrentFunction() requested unsupported USB function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string p1, "none"

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 322
    return-void

    .line 320
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "USB device mode not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 5
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .prologue
    const/4 v4, 0x0

    .line 403
    const-string v2, "portId must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 405
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 409
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    return-void

    .line 413
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUsbDataUnlocked(Z)V
    .locals 5
    .param p1, "unlocked"    # Z

    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USB"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 353
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 354
    .local v0, "pid":I
    const/16 v2, 0x51a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbService Caller of setUsbDataUnlocked is uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDataUnlocked(Z)V

    .line 356
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 181
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 190
    :cond_2
    return-void
.end method

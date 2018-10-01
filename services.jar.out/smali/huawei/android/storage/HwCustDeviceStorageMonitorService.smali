.class public Lhuawei/android/storage/HwCustDeviceStorageMonitorService;
.super Ljava/lang/Object;
.source "HwCustDeviceStorageMonitorService.java"


# instance fields
.field protected mService:Lcom/android/server/storage/AbsDeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/AbsDeviceStorageMonitorService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/server/storage/AbsDeviceStorageMonitorService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/storage/HwCustDeviceStorageMonitorService;->mService:Lcom/android/server/storage/AbsDeviceStorageMonitorService;

    .line 15
    iput-object p1, p0, Lhuawei/android/storage/HwCustDeviceStorageMonitorService;->mService:Lcom/android/server/storage/AbsDeviceStorageMonitorService;

    .line 16
    return-void
.end method


# virtual methods
.method public clearMemoryForCritiLow()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public getCritiLowMemThreshold()J
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

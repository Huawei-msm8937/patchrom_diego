.class public Lcom/huawei/hwextdevice/HWExtDeviceType;
.super Ljava/lang/Object;
.source "HWExtDeviceType.java"


# static fields
.field public static final TYPE_MOTION_DETECTION:I = 0x1

.field private static mDevicesType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hwextdevice/HWExtDeviceType;->mDevicesType:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHWExtDevieTyps()[I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    sget-object v0, Lcom/huawei/hwextdevice/HWExtDeviceType;->mDevicesType:[I

    if-nez v0, :cond_0

    .line 44
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/huawei/hwextdevice/HWExtDeviceType;->mDevicesType:[I

    .line 48
    :cond_0
    sget-object v0, Lcom/huawei/hwextdevice/HWExtDeviceType;->mDevicesType:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.class public Lcom/huawei/hwextdevice/HWExtDeviceData;
.super Ljava/lang/Object;
.source "HWExtDeviceData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    .local v1, "deviceData":Lcom/huawei/hwextdevice/HWExtDeviceData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public cloneDeep()Lcom/huawei/hwextdevice/HWExtDeviceData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/huawei/hwextdevice/HWExtDeviceData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceData;

    return-object v0
.end method

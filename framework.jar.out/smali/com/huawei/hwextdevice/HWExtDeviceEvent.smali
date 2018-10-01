.class public Lcom/huawei/hwextdevice/HWExtDeviceEvent;
.super Ljava/lang/Object;
.source "HWExtDeviceEvent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_VALUES_LEN:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "HWExtDeviceEvent"


# instance fields
.field private mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

.field private mDeviceValues:[F

.field private mDeviceValuesLen:I

.field private mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

.field private mHWExtDeviceType:I

.field private mHWExtSubDeviceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxLenValueArray"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .line 43
    iput v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    .line 45
    iput v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtSubDeviceType:I

    .line 47
    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    .line 49
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    .line 56
    iput-object v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

    .line 82
    iput p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    .line 83
    iget v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V
    .locals 1
    .param p1, "hwextDevice"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 71
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;-><init>(I)V

    .line 72
    iput-object p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .line 73
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    invoke-interface {v0}, Lcom/huawei/hwextdevice/devices/IHWExtDevice;->getHWExtDeviceType()I

    move-result v0

    iput v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 223
    .local v1, "deviceEvent":Lcom/huawei/hwextdevice/HWExtDeviceEvent;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;

    move-object v1, v0

    .line 224
    iget v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    iput v3, v1, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    .line 225
    iget v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtSubDeviceType:I

    iput v3, v1, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtSubDeviceType:I

    .line 226
    iget v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    iput v3, v1, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    .line 228
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    check-cast v3, [F

    iput-object v3, v1, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

    if-eqz v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

    invoke-virtual {v3}, Lcom/huawei/hwextdevice/HWExtDeviceData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hwextdevice/HWExtDeviceData;

    iput-object v3, v1, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_1
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .line 211
    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    .line 213
    return-void
.end method

.method public getDevice()Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    return-object v0
.end method

.method public getDeviceData()Lcom/huawei/hwextdevice/HWExtDeviceData;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

    invoke-virtual {v0}, Lcom/huawei/hwextdevice/HWExtDeviceData;->cloneDeep()Lcom/huawei/hwextdevice/HWExtDeviceData;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    return v0
.end method

.method public getDeviceValues()[F
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceValuesLen()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    return v0
.end method

.method public getSubDeviceType()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtSubDeviceType:I

    return v0
.end method

.method public setDevice(Lcom/huawei/hwextdevice/devices/IHWExtDevice;)V
    .locals 0
    .param p1, "hwextDevice"    # Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDevice:Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    .line 93
    return-void
.end method

.method public setDeviceData(Lcom/huawei/hwextdevice/HWExtDeviceData;)V
    .locals 1
    .param p1, "deviceData"    # Lcom/huawei/hwextdevice/HWExtDeviceData;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceData;->cloneDeep()Lcom/huawei/hwextdevice/HWExtDeviceData;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceData:Lcom/huawei/hwextdevice/HWExtDeviceData;

    .line 189
    :cond_0
    return-void
.end method

.method public setDeviceType(I)V
    .locals 0
    .param p1, "deviceType"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtDeviceType:I

    .line 112
    return-void
.end method

.method public setDeviceValues([FI)V
    .locals 3
    .param p1, "deviceValues"    # [F
    .param p2, "valueLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 150
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    array-length v0, v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    array-length p2, v0

    .end local p2    # "valueLen":I
    :cond_0
    iput p2, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    .line 152
    iget-object v0, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValues:[F

    iget v1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mDeviceValuesLen:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 154
    :cond_1
    return-void
.end method

.method public setSubDeviceType(I)V
    .locals 0
    .param p1, "subDeviceType"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->mHWExtSubDeviceType:I

    .line 132
    return-void
.end method

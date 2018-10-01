.class public Lcom/huawei/hwextdevice/devices/HWExtMotion;
.super Ljava/lang/Object;
.source "HWExtMotion.java"

# interfaces
.implements Lcom/huawei/hwextdevice/devices/IHWExtDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hwextdevice/devices/HWExtMotion$MotionType;
    }
.end annotation


# static fields
.field private static ATTRIBUTES_MAX_COUNT:I = 0x0

.field public static ATTRIBUTE_WAKE_UP:I = 0x0

.field private static final DEVICE_NAME:Ljava/lang/String; = "MotionDetectionDevice"

.field private static DEVICE_TYPE:I = 0x0

.field private static final VALUES_MAX_LEN:I = 0x1f4


# instance fields
.field private mHWExtDeviceAttributes:[I

.field private mHWExtDeviceAttributesCount:I

.field private mHWExtSubDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    sput v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->DEVICE_TYPE:I

    .line 41
    sput v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->ATTRIBUTE_WAKE_UP:I

    .line 44
    sput v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->ATTRIBUTES_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtSubDeviceType:I

    .line 54
    sget v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->ATTRIBUTES_MAX_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributes:[I

    .line 56
    iput v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    .line 62
    sget v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->DEVICE_TYPE:I

    iput v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtSubDeviceType:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "motionType"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtSubDeviceType:I

    .line 54
    sget v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->ATTRIBUTES_MAX_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributes:[I

    .line 56
    iput v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    .line 72
    iput p1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtSubDeviceType:I

    .line 73
    return-void
.end method

.method private isAttributeContanis(I)Z
    .locals 2
    .param p1, "deviceAttribute"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributes:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 180
    const/4 v1, 0x1

    .line 183
    :goto_1
    return v1

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isAttributeSupported(I)Z
    .locals 1
    .param p1, "deviceAttribute"    # I

    .prologue
    .line 164
    sget v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->ATTRIBUTES_MAX_COUNT:I

    if-gt p1, v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "object":Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 221
    .restart local v1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public cloneDeep()Lcom/huawei/hwextdevice/devices/IHWExtDevice;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/huawei/hwextdevice/devices/HWExtMotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hwextdevice/devices/IHWExtDevice;

    return-object v0
.end method

.method public getHWExtDeviceAttributes()[I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getHWExtDeviceAttributesCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    return v0
.end method

.method public getHWExtDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "MotionDetectionDevice"

    return-object v0
.end method

.method public getHWExtDeviceSubType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtSubDeviceType:I

    return v0
.end method

.method public getHWExtDeviceType()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->DEVICE_TYPE:I

    return v0
.end method

.method public getMaxLenValueArray()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x1f4

    return v0
.end method

.method public setHWExtDeviceAttribute(I)V
    .locals 2
    .param p1, "deviceAttribute"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/huawei/hwextdevice/devices/HWExtMotion;->isAttributeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/hwextdevice/devices/HWExtMotion;->isAttributeContanis(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    sget v1, Lcom/huawei/hwextdevice/devices/HWExtMotion;->ATTRIBUTES_MAX_COUNT:I

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributes:[I

    iget v1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    aput p1, v0, v1

    .line 132
    iget v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtDeviceAttributesCount:I

    goto :goto_0
.end method

.method public setHWExtDeviceSubType(I)V
    .locals 0
    .param p1, "deviceSubType"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/huawei/hwextdevice/devices/HWExtMotion;->mHWExtSubDeviceType:I

    .line 94
    return-void
.end method

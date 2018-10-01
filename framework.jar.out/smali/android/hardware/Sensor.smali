.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GESTURE:Ljava/lang/String; = "android.sensor.gesture"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_AIR_PRESS:I = 0x2713

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_CAP_PROX:I = 0x2715

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GESTURE:I = 0x2718

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HALL:I = 0x2712

.field public static final TYPE_HANDPRESS:I = 0x2714

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MCU_LABC:I = 0x2717

.field public static final TYPE_MOTION_ACCEL:I = 0x1fa2643

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATE_SCREEN:I = 0x2716

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 635
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x3
        0x3
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .prologue
    .line 682
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/16 v1, 0x11

    if-gt p1, v1, :cond_0

    .line 684
    const/4 v1, 0x3

    .line 696
    :goto_0
    return v1

    .line 686
    :cond_0
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    .line 687
    .local v0, "offset":I
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 694
    const/16 v1, 0x10

    goto :goto_0

    .line 696
    :cond_1
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method private setType(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 907
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 908
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    sparse-switch v1, :sswitch_data_0

    .line 988
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 910
    :sswitch_0
    const-string v1, "android.sensor.accelerometer"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 913
    :sswitch_1
    const-string v1, "android.sensor.ambient_temperature"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 916
    :sswitch_2
    const-string v1, "android.sensor.game_rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 919
    :sswitch_3
    const-string v1, "android.sensor.geomagnetic_rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 922
    :sswitch_4
    const-string v1, "android.sensor.glance_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 925
    :sswitch_5
    const-string v1, "android.sensor.gravity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 928
    :sswitch_6
    const-string v1, "android.sensor.gyroscope"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 931
    :sswitch_7
    const-string v1, "android.sensor.gyroscope_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 934
    :sswitch_8
    const-string v1, "android.sensor.heart_rate"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 937
    :sswitch_9
    const-string v1, "android.sensor.light"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 940
    :sswitch_a
    const-string v1, "android.sensor.linear_acceleration"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 943
    :sswitch_b
    const-string v1, "android.sensor.magnetic_field"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 946
    :sswitch_c
    const-string v1, "android.sensor.magnetic_field_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 949
    :sswitch_d
    const-string v1, "android.sensor.pick_up_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 952
    :sswitch_e
    const-string v1, "android.sensor.pressure"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 955
    :sswitch_f
    const-string v1, "android.sensor.proximity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 958
    :sswitch_10
    const-string v1, "android.sensor.relative_humidity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 961
    :sswitch_11
    const-string v1, "android.sensor.rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 964
    :sswitch_12
    const-string v1, "android.sensor.significant_motion"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 967
    :sswitch_13
    const-string v1, "android.sensor.step_counter"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 970
    :sswitch_14
    const-string v1, "android.sensor.step_detector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 973
    :sswitch_15
    const-string v1, "android.sensor.tilt_detector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 976
    :sswitch_16
    const-string v1, "android.sensor.wake_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 979
    :sswitch_17
    const-string v1, "android.sensor.orientation"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 982
    :sswitch_18
    const-string v1, "android.sensor.temperature"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto :goto_0

    .line 985
    :sswitch_19
    const-string v1, "android.sensor.gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    goto/16 :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_b
        0x3 -> :sswitch_17
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_e
        0x7 -> :sswitch_18
        0x8 -> :sswitch_f
        0x9 -> :sswitch_5
        0xa -> :sswitch_a
        0xb -> :sswitch_11
        0xc -> :sswitch_10
        0xd -> :sswitch_1
        0xe -> :sswitch_c
        0xf -> :sswitch_2
        0x10 -> :sswitch_7
        0x11 -> :sswitch_12
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x14 -> :sswitch_3
        0x15 -> :sswitch_8
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_4
        0x19 -> :sswitch_d
        0x2718 -> :sswitch_19
    .end sparse-switch
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaxDelay()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isDataInjectionSupported()Z
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWakeUpSensor()Z
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRange(FF)V
    .locals 0
    .param p1, "max"    # F
    .param p2, "res"    # F

    .prologue
    .line 886
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 887
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 888
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

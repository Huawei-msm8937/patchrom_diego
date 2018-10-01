.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$MakeupEffectCallback;,
        Landroid/hardware/Camera$MmiFocusResultCallback;,
        Landroid/hardware/Camera$OisHallCheckResultCallback;,
        Landroid/hardware/Camera$OisHallCalibResultCallback;,
        Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;,
        Landroid/hardware/Camera$FovResultCallback;,
        Landroid/hardware/Camera$HdcResultCallback;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$ExposureMeasureCallback;,
        Landroid/hardware/Camera$DualCameraStateChangedCallback;,
        Landroid/hardware/Camera$LaserCalibrationCallback;,
        Landroid/hardware/Camera$MMITestFeatureCallback;,
        Landroid/hardware/Camera$DualCameraVerificationCallback;,
        Landroid/hardware/Camera$ExposurePreviewStateCallback;,
        Landroid/hardware/Camera$LcdCompensateCallback;,
        Landroid/hardware/Camera$TargetTrackingCallback;,
        Landroid/hardware/Camera$LpdParametersCallback;,
        Landroid/hardware/Camera$PreviewParametersCallback;,
        Landroid/hardware/Camera$DarkRaiderCallback;,
        Landroid/hardware/Camera$PdafVerificationCallback;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_DARK_RAIDER:I = 0x8000000

.field private static final CAMERA_MSG_DUAL_CAMERA_SHELTER:I = 0x80000

.field private static final CAMERA_MSG_DUAL_CAMERA_VERIFY:I = 0x40000

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_EXPOSURE_MEASURE_TIME:I = 0x100000

.field private static final CAMERA_MSG_EXPOSURE_PREVIEW_STATE:I = 0x200000

.field private static final CAMERA_MSG_EXTEND:I = 0x40000000

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_FOV_RESULT:I = 0x4000000

.field private static final CAMERA_MSG_HDC_RESULT:I = 0x2000000

.field private static final CAMERA_MSG_LASER_CALIBRATION:I = 0x1000000

.field private static final CAMERA_MSG_LCD_COMPENSATE_LIGHT:I = 0x20000

.field private static final CAMERA_MSG_LPD_PARAMS:I = -0x80000000

.field private static final CAMERA_MSG_MAKEUP_TIPS_RESULT:I = 0x4

.field private static final CAMERA_MSG_MMI_FOCUS_RESULT:I = 0x10000000

.field private static final CAMERA_MSG_MMI_TEST_FEATURE:I = 0x20000000

.field private static final CAMERA_MSG_OIS_GRYO_OFFSET_CALIB_RESULT:I = 0x1

.field private static final CAMERA_MSG_OIS_HALL_CALIB_RESULT:I = 0x2

.field private static final CAMERA_MSG_OIS_HALL_CHECK_RESULT:I = 0x3

.field private static final CAMERA_MSG_PDAF_VERIFY:I = 0x400000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_PREVIEW_PARAMS:I = 0x800000

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_TARGET_TRACKING:I = 0x10000

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static HWFLOW:Z = false

.field private static final INT32_SIZE:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PARAM_DEFAULT_VALUE:I = -0x1

.field private static final PARAM_EXPOSURE_HINT:Ljava/lang/String; = "exposure_hint"

.field private static final PARAM_EXPOSURE_TIME:Ljava/lang/String; = "exposure_time"

.field private static final PARAM_ISO_VALUE:Ljava/lang/String; = "iso_value"

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private final HW_FACE_BEAUTY_FOR_CHATTING:Ljava/lang/String;

.field private final HW_FACE_BEAUTY_OFF:Ljava/lang/String;

.field private final HW_FACE_BEAUTY_ON:Ljava/lang/String;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mDarkRaiderCallback:Landroid/hardware/Camera$DarkRaiderCallback;

.field private mDualCameraStateChangedCallback:Landroid/hardware/Camera$DualCameraStateChangedCallback;

.field private mDualCameraVerificationCallback:Landroid/hardware/Camera$DualCameraVerificationCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;

.field private mExposurePreviewStateCallback:Landroid/hardware/Camera$ExposurePreviewStateCallback;

.field private final mExposurePreviewStateCallbackLock:Ljava/lang/Object;

.field private mFaceDetectionCallbackLock:Ljava/lang/Object;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field public mFocusMoveValue:I

.field private mFovResultCallback:Landroid/hardware/Camera$FovResultCallback;

.field private mHdcResultCallback:Landroid/hardware/Camera$HdcResultCallback;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpegCallbackLock:Ljava/lang/Object;

.field private mLaserCalibrationCallback:Landroid/hardware/Camera$LaserCalibrationCallback;

.field private mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;

.field private mLpdParasCallback:Landroid/hardware/Camera$LpdParametersCallback;

.field private mMMITestFeatureCallback:Landroid/hardware/Camera$MMITestFeatureCallback;

.field private mMakeupEffectCallback:Landroid/hardware/Camera$MakeupEffectCallback;

.field private final mMmiFocusResultCallBackLock:Ljava/lang/Object;

.field private mMmiFocusResultCallback:Landroid/hardware/Camera$MmiFocusResultCallback;

.field private mNativeContext:J

.field private mOisGryoOffseCalibResultCallback:Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;

.field private mOisHallCalibResultCallback:Landroid/hardware/Camera$OisHallCalibResultCallback;

.field private mOisHallCheckResultCallback:Landroid/hardware/Camera$OisHallCheckResultCallback;

.field private mOneShot:Z

.field private mPdafVerificationCallback:Landroid/hardware/Camera$PdafVerificationCallback;

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewExposureHint:I

.field private mPreviewExposureTime:I

.field private mPreviewIsoValue:I

.field private mPreviewParamsCallBack:Landroid/hardware/Camera$PreviewParametersCallback;

.field private final mPreviewParamsCallBackLock:Ljava/lang/Object;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mTargetTrackingCallback:Landroid/hardware/Camera$TargetTrackingCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 256
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_1

    const-string v0, "Camera"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/hardware/Camera;->HWFLOW:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewParamsCallBackLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallbackLock:Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mMmiFocusResultCallBackLock:Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mFaceDetectionCallbackLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallbackLock:Ljava/lang/Object;

    .line 1030
    iput v1, p0, Landroid/hardware/Camera;->mFocusMoveValue:I

    .line 2670
    const-string/jumbo v0, "hw-face-beauty-preview-only"

    iput-object v0, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_FOR_CHATTING:Ljava/lang/String;

    .line 2671
    const-string/jumbo v0, "on"

    iput-object v0, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_ON:Ljava/lang/String;

    .line 2672
    const-string/jumbo v0, "off"

    iput-object v0, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_OFF:Ljava/lang/String;

    .line 617
    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 223
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mPreviewParamsCallBackLock:Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallbackLock:Ljava/lang/Object;

    .line 227
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mMmiFocusResultCallBackLock:Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mFaceDetectionCallbackLock:Ljava/lang/Object;

    .line 252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mJpegCallbackLock:Ljava/lang/Object;

    .line 1030
    iput v2, p0, Landroid/hardware/Camera;->mFocusMoveValue:I

    .line 2670
    const-string/jumbo v1, "hw-face-beauty-preview-only"

    iput-object v1, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_FOR_CHATTING:Ljava/lang/String;

    .line 2671
    const-string/jumbo v1, "on"

    iput-object v1, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_ON:Ljava/lang/String;

    .line 2672
    const-string/jumbo v1, "off"

    iput-object v1, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_OFF:Ljava/lang/String;

    .line 568
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    .line 569
    .local v0, "err":I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera new cameraInitNormal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    sparse-switch v0, :sswitch_data_0

    .line 593
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown camera error("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service(-13)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed(-19)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented(-38)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device(-95)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid(-22)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened(-16)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened(-87)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_0
    return-void

    .line 571
    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 223
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mPreviewParamsCallBackLock:Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallbackLock:Ljava/lang/Object;

    .line 227
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mMmiFocusResultCallBackLock:Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mFaceDetectionCallbackLock:Ljava/lang/Object;

    .line 252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mJpegCallbackLock:Ljava/lang/Object;

    .line 1030
    iput v2, p0, Landroid/hardware/Camera;->mFocusMoveValue:I

    .line 2670
    const-string/jumbo v1, "hw-face-beauty-preview-only"

    iput-object v1, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_FOR_CHATTING:Ljava/lang/String;

    .line 2671
    const-string/jumbo v1, "on"

    iput-object v1, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_ON:Ljava/lang/String;

    .line 2672
    const-string/jumbo v1, "off"

    iput-object v1, p0, Landroid/hardware/Camera;->HW_FACE_BEAUTY_OFF:Ljava/lang/String;

    .line 489
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 490
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    sparse-switch v0, :sswitch_data_0

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_0
    return-void

    .line 491
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceDetectionCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$TargetTrackingCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mTargetTrackingCallback:Landroid/hardware/Camera$TargetTrackingCallback;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$LcdCompensateCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$DualCameraVerificationCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mDualCameraVerificationCallback:Landroid/hardware/Camera$DualCameraVerificationCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$LaserCalibrationCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mLaserCalibrationCallback:Landroid/hardware/Camera$LaserCalibrationCallback;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$DualCameraStateChangedCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mDualCameraStateChangedCallback:Landroid/hardware/Camera$DualCameraStateChangedCallback;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$MMITestFeatureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mMMITestFeatureCallback:Landroid/hardware/Camera$MMITestFeatureCallback;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ExposureMeasureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/hardware/Camera;Landroid/hardware/Camera$ExposureMeasureCallback;)Landroid/hardware/Camera$ExposureMeasureCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$ExposureMeasureCallback;

    .prologue
    .line 146
    iput-object p1, p0, Landroid/hardware/Camera;->mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ExposurePreviewStateCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallback:Landroid/hardware/Camera$ExposurePreviewStateCallback;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/hardware/Camera;Landroid/hardware/Camera$ExposurePreviewStateCallback;)Landroid/hardware/Camera$ExposurePreviewStateCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$ExposurePreviewStateCallback;

    .prologue
    .line 146
    iput-object p1, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallback:Landroid/hardware/Camera$ExposurePreviewStateCallback;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$PdafVerificationCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mPdafVerificationCallback:Landroid/hardware/Camera$PdafVerificationCallback;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewParamsCallBackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewParametersCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewParamsCallBack:Landroid/hardware/Camera$PreviewParametersCallback;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/hardware/Camera;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->formatExposureTime([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/hardware/Camera;[B)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->formatIsoValue([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/hardware/Camera;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget v0, p0, Landroid/hardware/Camera;->mPreviewIsoValue:I

    return v0
.end method

.method static synthetic access$3102(Landroid/hardware/Camera;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Landroid/hardware/Camera;->mPreviewIsoValue:I

    return p1
.end method

.method static synthetic access$3200(Landroid/hardware/Camera;[B)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->formatExposureHint([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/hardware/Camera;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget v0, p0, Landroid/hardware/Camera;->mPreviewExposureHint:I

    return v0
.end method

.method static synthetic access$3302(Landroid/hardware/Camera;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Landroid/hardware/Camera;->mPreviewExposureHint:I

    return p1
.end method

.method static synthetic access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdcResultCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mHdcResultCallback:Landroid/hardware/Camera$HdcResultCallback;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$FovResultCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mFovResultCallback:Landroid/hardware/Camera$FovResultCallback;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$DarkRaiderCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mDarkRaiderCallback:Landroid/hardware/Camera$DarkRaiderCallback;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$LpdParametersCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mLpdParasCallback:Landroid/hardware/Camera$LpdParametersCallback;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mMmiFocusResultCallBackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MmiFocusResultCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mMmiFocusResultCallback:Landroid/hardware/Camera$MmiFocusResultCallback;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Landroid/hardware/Camera;->HWFLOW:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/hardware/Camera;[BI)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->byteArrayToInt32([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/hardware/Camera;)Landroid/hardware/Camera$MakeupEffectCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mMakeupEffectCallback:Landroid/hardware/Camera$MakeupEffectCallback;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mOisGryoOffseCalibResultCallback:Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisHallCalibResultCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mOisHallCalibResultCallback:Landroid/hardware/Camera$OisHallCalibResultCallback;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisHallCheckResultCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mOisHallCheckResultCallback:Landroid/hardware/Camera$OisHallCheckResultCallback;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 146
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$600(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method private final addAudioViopMode(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2679
    const-string/jumbo v0, "off"

    .line 2680
    .local v0, "faceBeautyMode":Ljava/lang/String;
    invoke-direct {p0}, Landroid/hardware/Camera;->audoIsVoip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2681
    const-string/jumbo v0, "on"

    .line 2683
    :cond_0
    const-string/jumbo v1, "hw-face-beauty-preview-only"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    return-void
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 1036
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1043
    return-void
.end method

.method private final audoIsVoip()Z
    .locals 5

    .prologue
    .line 2658
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2659
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2661
    .local v0, "audioService":Landroid/media/IAudioService;
    const/4 v3, 0x3

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 2666
    :goto_0
    return v3

    .line 2662
    :catch_0
    move-exception v2

    .line 2663
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private byteArrayToInt32([BI)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "index"    # I

    .prologue
    .line 5119
    const/4 v3, 0x0

    .line 5120
    .local v3, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 5121
    mul-int/lit8 v2, v1, 0x8

    .line 5122
    .local v2, "shift":I
    add-int v4, v1, p2

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    .line 5123
    .local v0, "data":I
    shl-int/2addr v0, v2

    .line 5124
    or-int/2addr v3, v0

    .line 5120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5127
    .end local v0    # "data":I
    .end local v2    # "shift":I
    :cond_0
    return v3
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 545
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 7
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 520
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 521
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 522
    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 523
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 524
    iput-boolean v5, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 525
    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 528
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .local v6, "looper":Landroid/os/Looper;
    if-eqz v6, :cond_1

    .line 529
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v6}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 538
    :goto_0
    const/16 v0, 0x400

    invoke-static {v0}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 539
    .local v5, "blocked":Z
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;Z)I

    move-result v0

    return v0

    .line 530
    .end local v5    # "blocked":Z
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 531
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v6}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 533
    :cond_2
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 603
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method private formatExposureHint([B)I
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 5181
    const/16 v1, 0x8

    .line 5182
    .local v1, "index":I
    invoke-direct {p0, p1, v1}, Landroid/hardware/Camera;->byteArrayToInt32([BI)I

    move-result v0

    .line 5183
    .local v0, "expoHint":I
    return v0
.end method

.method private formatExposureTime([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    const v6, 0xf4240

    .line 5138
    const/4 v2, 0x0

    .line 5139
    .local v2, "index":I
    invoke-direct {p0, p1, v2}, Landroid/hardware/Camera;->byteArrayToInt32([BI)I

    move-result v1

    .line 5140
    .local v1, "expoTime":I
    const/4 v3, 0x0

    .line 5141
    .local v3, "strExpoTime":Ljava/lang/String;
    iget v5, p0, Landroid/hardware/Camera;->mPreviewExposureTime:I

    if-eq v1, v5, :cond_0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 5157
    .end local v3    # "strExpoTime":Ljava/lang/String;
    .local v4, "strExpoTime":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 5145
    .end local v4    # "strExpoTime":Ljava/lang/String;
    .restart local v3    # "strExpoTime":Ljava/lang/String;
    :cond_1
    iput v1, p0, Landroid/hardware/Camera;->mPreviewExposureTime:I

    .line 5146
    if-lt v1, v6, :cond_2

    .line 5147
    div-int v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 5157
    .end local v3    # "strExpoTime":Ljava/lang/String;
    .restart local v4    # "strExpoTime":Ljava/lang/String;
    goto :goto_0

    .line 5149
    .end local v4    # "strExpoTime":Ljava/lang/String;
    .restart local v3    # "strExpoTime":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 5150
    div-int v0, v6, v1

    .line 5151
    .local v0, "expoDenominator":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5152
    goto :goto_1

    .line 5153
    .end local v0    # "expoDenominator":I
    :cond_3
    const-string v3, "0"

    goto :goto_1
.end method

.method private formatIsoValue([B)I
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 5168
    const/4 v0, 0x4

    .line 5169
    .local v0, "index":I
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->byteArrayToInt32([BI)I

    move-result v1

    .line 5170
    .local v1, "isoValue":I
    return v1
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 309
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 310
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 311
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 313
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2649
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2650
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2722
    if-nez p0, :cond_0

    .line 2723
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2726
    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$4600(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2727
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2728
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2730
    return-object v1
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_cancelTakePicture()V
.end method

.method private final native native_getFocusContrast()I
.end method

.method private final native native_getFocusValue()I
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;Z)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 424
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 425
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 426
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 427
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 428
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 429
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    .line 432
    :goto_1
    return-object v3

    .line 426
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 414
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 474
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 610
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1513
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1514
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1518
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1519
    .local v1, "m":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1520
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1521
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1524
    :cond_2
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 979
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 980
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1022
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1023
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1607
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1608
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1609
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1611
    return-void

    .line 1609
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 563
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1624
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1625
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1626
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1643
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1644
    return-void

    .line 1626
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancelTakePicture()V
    .locals 0

    .prologue
    .line 1737
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelTakePicture()V

    .line 1738
    return-void
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1076
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1077
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1083
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1084
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1085
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1087
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1090
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 1940
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1911
    if-nez p1, :cond_0

    .line 1912
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1913
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1915
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1920
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 1916
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1917
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 622
    return-void
.end method

.method public getFocusContrast()I
    .locals 4

    .prologue
    .line 2704
    const-string v1, "Camera"

    const-string v2, "#####getFocusContrast!###"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getFocusContrast()I

    move-result v0

    .line 2706
    .local v0, "focusContrast":I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get focus contrast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    return v0
.end method

.method public getFocusValue()I
    .locals 2

    .prologue
    .line 2692
    const-string v0, "Camera"

    const-string v1, "#####getFocusValue!###"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getFocusValue()I

    move-result v0

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2635
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2636
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2637
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2638
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 639
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1676
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1677
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1678
    return-void

    .line 1677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDarkRaiderCallback(Landroid/hardware/Camera$DarkRaiderCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/hardware/Camera$DarkRaiderCallback;

    .prologue
    .line 2015
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDarkRaiderCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iput-object p1, p0, Landroid/hardware/Camera;->mDarkRaiderCallback:Landroid/hardware/Camera$DarkRaiderCallback;

    .line 2017
    return-void

    .line 2015
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setDualCameraStateChangedCallback(Landroid/hardware/Camera$DualCameraStateChangedCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/hardware/Camera$DualCameraStateChangedCallback;

    .prologue
    .line 2199
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualCameraStateChangedCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iput-object p1, p0, Landroid/hardware/Camera;->mDualCameraStateChangedCallback:Landroid/hardware/Camera$DualCameraStateChangedCallback;

    .line 2201
    return-void

    .line 2199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDualCameraVerificationCallback(Landroid/hardware/Camera$DualCameraVerificationCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$DualCameraVerificationCallback;

    .prologue
    .line 2145
    iput-object p1, p0, Landroid/hardware/Camera;->mDualCameraVerificationCallback:Landroid/hardware/Camera$DualCameraVerificationCallback;

    .line 2146
    return-void
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2596
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2597
    return-void
.end method

.method public final setExposurePreviewStateCallback(Landroid/hardware/Camera$ExposurePreviewStateCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$ExposurePreviewStateCallback;

    .prologue
    .line 2125
    iget-object v1, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2126
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mExposurePreviewStateCallback:Landroid/hardware/Camera$ExposurePreviewStateCallback;

    .line 2127
    monitor-exit v1

    .line 2128
    return-void

    .line 2127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 2250
    iget-object v1, p0, Landroid/hardware/Camera;->mFaceDetectionCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2251
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 2252
    monitor-exit v1

    .line 2254
    return-void

    .line 2252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setFovResultCallback(Landroid/hardware/Camera$FovResultCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$FovResultCallback;

    .prologue
    .line 2290
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FovResultCallback() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iput-object p1, p0, Landroid/hardware/Camera;->mFovResultCallback:Landroid/hardware/Camera$FovResultCallback;

    .line 2292
    return-void

    .line 2290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setHdcResultCallback(Landroid/hardware/Camera$HdcResultCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$HdcResultCallback;

    .prologue
    .line 2271
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHdcResultCallback() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iput-object p1, p0, Landroid/hardware/Camera;->mHdcResultCallback:Landroid/hardware/Camera$HdcResultCallback;

    .line 2273
    return-void

    .line 2271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setLaserCalibrationCallback(Landroid/hardware/Camera$LaserCalibrationCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$LaserCalibrationCallback;

    .prologue
    .line 2181
    iput-object p1, p0, Landroid/hardware/Camera;->mLaserCalibrationCallback:Landroid/hardware/Camera$LaserCalibrationCallback;

    .line 2182
    return-void
.end method

.method public final setLcdCompensateCallback(Landroid/hardware/Camera$LcdCompensateCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$LcdCompensateCallback;

    .prologue
    .line 2105
    iput-object p1, p0, Landroid/hardware/Camera;->mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;

    .line 2106
    return-void
.end method

.method public final setLpdParametersCallback(Landroid/hardware/Camera$LpdParametersCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/hardware/Camera$LpdParametersCallback;

    .prologue
    .line 2062
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLpdParametersCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iput-object p1, p0, Landroid/hardware/Camera;->mLpdParasCallback:Landroid/hardware/Camera$LpdParametersCallback;

    .line 2064
    return-void

    .line 2062
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMMITestFeaturenCallback(Landroid/hardware/Camera$MMITestFeatureCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$MMITestFeatureCallback;

    .prologue
    .line 2163
    iput-object p1, p0, Landroid/hardware/Camera;->mMMITestFeatureCallback:Landroid/hardware/Camera$MMITestFeatureCallback;

    .line 2164
    return-void
.end method

.method public final setMakeupEffectCallback(Landroid/hardware/Camera$MakeupEffectCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$MakeupEffectCallback;

    .prologue
    .line 2387
    iput-object p1, p0, Landroid/hardware/Camera;->mMakeupEffectCallback:Landroid/hardware/Camera$MakeupEffectCallback;

    .line 2388
    return-void
.end method

.method public final setMmiFocusResultCallback(Landroid/hardware/Camera$MmiFocusResultCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$MmiFocusResultCallback;

    .prologue
    .line 2366
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMmiFocusResultCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iget-object v1, p0, Landroid/hardware/Camera;->mMmiFocusResultCallBackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2368
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mMmiFocusResultCallback:Landroid/hardware/Camera$MmiFocusResultCallback;

    .line 2369
    monitor-exit v1

    .line 2370
    return-void

    .line 2366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setOisGryoOffseCalibResultCallback(Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;

    .prologue
    .line 2309
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OisGryoOffseCalibResultCallback() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iput-object p1, p0, Landroid/hardware/Camera;->mOisGryoOffseCalibResultCallback:Landroid/hardware/Camera$OisGryoOffseCalibResultCallback;

    .line 2311
    return-void

    .line 2309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOisHallCalibResultCallback(Landroid/hardware/Camera$OisHallCalibResultCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$OisHallCalibResultCallback;

    .prologue
    .line 2328
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OisHallCalibResultCallback() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iput-object p1, p0, Landroid/hardware/Camera;->mOisHallCalibResultCallback:Landroid/hardware/Camera$OisHallCalibResultCallback;

    .line 2330
    return-void

    .line 2328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOisHallCheckResultCallback(Landroid/hardware/Camera$OisHallCheckResultCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$OisHallCheckResultCallback;

    .prologue
    .line 2347
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOisHallCheckResultCallback() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    iput-object p1, p0, Landroid/hardware/Camera;->mOisHallCheckResultCallback:Landroid/hardware/Camera$OisHallCheckResultCallback;

    .line 2349
    return-void

    .line 2347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 897
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 898
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 899
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 900
    if-eqz p1, :cond_0

    .line 901
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 903
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 904
    return-void

    :cond_1
    move v0, v1

    .line 903
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2611
    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    .line 2612
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2613
    .local v1, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2614
    .local v0, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 2616
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2622
    .end local v0    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->addAudioViopMode(Landroid/hardware/Camera$Parameters;)V

    .line 2624
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2625
    return-void
.end method

.method public final setPdafVerificationCallback(Landroid/hardware/Camera$PdafVerificationCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/hardware/Camera$PdafVerificationCallback;

    .prologue
    .line 1996
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPdafVerificationCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iput-object p1, p0, Landroid/hardware/Camera;->mPdafVerificationCallback:Landroid/hardware/Camera$PdafVerificationCallback;

    .line 1998
    return-void

    .line 1996
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 871
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 872
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 873
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 874
    if-eqz p1, :cond_0

    .line 875
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 879
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 880
    return-void

    :cond_1
    move v0, v1

    .line 879
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    const/4 v2, 0x0

    .line 1142
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1143
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1144
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1145
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1147
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1156
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1161
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1163
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1166
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1167
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1171
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1172
    return-void

    .line 1169
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 935
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 936
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 937
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 938
    if-eqz p1, :cond_0

    .line 939
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 941
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 942
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    const/16 v1, 0x400

    invoke-static {v1}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v0

    .line 725
    .local v0, "allow":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 727
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final setPreviewParametersCallback(Landroid/hardware/Camera$PreviewParametersCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewParametersCallback;

    .prologue
    .line 2037
    iget-object v1, p0, Landroid/hardware/Camera;->mPreviewParamsCallBackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2038
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewParamsCallBack:Landroid/hardware/Camera$PreviewParametersCallback;

    .line 2039
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera;->mPreviewExposureTime:I

    .line 2040
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera;->mPreviewIsoValue:I

    .line 2041
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera;->mPreviewExposureHint:I

    .line 2042
    monitor-exit v1

    .line 2043
    return-void

    .line 2042
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setTargetTrackingCallback(Landroid/hardware/Camera$TargetTrackingCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$TargetTrackingCallback;

    .prologue
    .line 2083
    iput-object p1, p0, Landroid/hardware/Camera;->mTargetTrackingCallback:Landroid/hardware/Camera$TargetTrackingCallback;

    .line 2084
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 1978
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1979
    return-void
.end method

.method public final startExposureMeasure(Landroid/hardware/Camera$ExposureMeasureCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$ExposureMeasureCallback;

    .prologue
    .line 2218
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startExposureMeasure() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iput-object p1, p0, Landroid/hardware/Camera;->mExposureMeasureCallback:Landroid/hardware/Camera$ExposureMeasureCallback;

    .line 2220
    return-void

    .line 2218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2423
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 2427
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2428
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 2436
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 2437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2438
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 828
    sget-boolean v0, Landroid/hardware/Camera;->HWFLOW:Z

    if-eqz v0, :cond_0

    .line 829
    const-string v0, "Camera"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 834
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 835
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 836
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 839
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 841
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 843
    return-void

    .line 841
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1732
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 3
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1774
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1775
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1776
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1778
    iget-object v2, p0, Landroid/hardware/Camera;->mJpegCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1779
    :try_start_0
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1780
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    const/4 v0, 0x0

    .line 1785
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1786
    or-int/lit8 v0, v0, 0x2

    .line 1788
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1789
    or-int/lit16 v0, v0, 0x80

    .line 1791
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1792
    or-int/lit8 v0, v0, 0x40

    .line 1794
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1795
    or-int/lit16 v0, v0, 0x100

    .line 1798
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1799
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1800
    return-void

    .line 1780
    .end local v0    # "msgType":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final native unlock()V
.end method

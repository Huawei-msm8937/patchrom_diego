.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BRIGHTNESS_FOR_PROXIMITY_POSITIVE:I = -0x2

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x96

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static DEBUG:Z = false

.field private static DEBUG_Controller:Z = false

.field private static DEBUG_FPLOG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_FOR_KEYGUARD_DISMISS_DONE:I = 0x5

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static NEED_NEW_BRIGHTNESS_PROCESS:Z = false

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false

.field private static final USE_SENSORHUB_LABC_PROP:Ljava/lang/String; = "use_sensorhub_labc"

.field private static mBrightnessModeChanged:Z


# instance fields
.field private fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutoBrightnessAdjustmentChanged:Z

.field private mAutoBrightnessEnabled:Z

.field private mAutoCustomBackLight:Lcom/android/server/lights/Light;

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mBackLight:Lcom/android/server/lights/Light;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserIdChange:Z

.field private mDisplayReadyLocked:Z

.field private mFeedBack:I

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

.field private mImmeBright:Z

.field private mLABCEnabled:Z

.field private mLABCSensor:Landroid/hardware/Sensor;

.field private mLABCSensorEnabled:Z

.field private final mLABCSensorListener:Landroid/hardware/SensorEventListener;

.field private mLastBacklight:I

.field private mLastStatus:Z

.field private mLastWaitBrightnessMode:Z

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mManualCustomBackLight:Lcom/android/server/lights/Light;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingBacklight:I

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerPolicyChangeFromDimming:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximityPositive:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnForKeyguardDismissBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSetAutoBackLight:I

.field private mSmartBackLightEnabled:Z

.field private mSmartBackLightSupported:Z

.field private mUnfinishedBusiness:Z

.field private mUseSensorHubLABC:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingHwSmartBackLightController:Z

.field private mWaitingForNegativeProximity:Z

.field private mWakeupFromSleep:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    .line 102
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_4

    const-string v0, "DisplayPowerController"

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 104
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_5

    const-string v0, "DisplayPowerController"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG_Controller:Z

    .line 111
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_FPLOG:Z

    .line 159
    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessModeChanged:Z

    .line 160
    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    return-void

    :cond_3
    move v0, v2

    .line 98
    goto :goto_0

    :cond_4
    move v0, v2

    .line 102
    goto :goto_1

    :cond_5
    move v0, v2

    .line 104
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 370
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 202
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingBacklight:I

    .line 203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mFeedBack:I

    .line 204
    const/16 v3, 0x66

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBacklight:I

    .line 205
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mSetAutoBackLight:I

    .line 206
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatus:Z

    .line 207
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustmentChanged:Z

    .line 208
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    .line 209
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 212
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z

    .line 291
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 292
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximityPositive:Z

    .line 296
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 297
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 316
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakeupFromSleep:Z

    .line 336
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserId:I

    .line 337
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserIdChange:Z

    .line 655
    new-instance v3, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 671
    new-instance v3, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 1393
    new-instance v3, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1500
    new-instance v3, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorListener:Landroid/hardware/SensorEventListener;

    .line 1527
    new-instance v3, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1540
    new-instance v3, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1553
    new-instance v3, Lcom/android/server/display/DisplayPowerController$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1749
    new-instance v3, Lcom/android/server/display/DisplayPowerController$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 371
    new-instance v3, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 372
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 374
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 375
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    .line 376
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 377
    const-class v3, Landroid/view/WindowManagerPolicy;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 378
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 379
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->isHighPrecision()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 384
    .local v35, "resources":Landroid/content/res/Resources;
    const v3, 0x10e005b

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v37

    .line 387
    .local v37, "screenBrightnessSettingMinimum":I
    const v3, 0x10e005e

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 390
    const v3, 0x10e0062

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 393
    const v3, 0x10e0063

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v3, v4, :cond_0

    .line 396
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessDim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v3, v4, :cond_1

    .line 401
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessSettingMinimum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 411
    .local v8, "screenBrightnessRangeMinimum":I
    const/16 v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 413
    const v3, 0x1120022

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 416
    const v3, 0x1120046

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 418
    const-string v3, "use_sensorhub_labc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    .line 420
    const v3, 0x10e0061

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 422
    .local v11, "lightSensorRate":I
    const v3, 0x10e005f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v12, v3

    .line 424
    .local v12, "brighteningLightDebounce":J
    const v3, 0x10e0060

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v14, v3

    .line 426
    .local v14, "darkeningLightDebounce":J
    const v3, 0x1120047

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 429
    .local v16, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v3, :cond_3

    .line 430
    const v3, 0x1070025

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v34

    .line 432
    .local v34, "lux":[I
    const v3, 0x1070026

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v36

    .line 434
    .local v36, "screenBrightness":[I
    const v3, 0x10e0064

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 436
    .local v7, "lightSensorWarmUpTimeConfig":I
    const v3, 0x1130001

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    .line 440
    .local v10, "dozeScaleFactor":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-nez v3, :cond_2

    .line 441
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    .line 442
    .local v6, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v6, :cond_a

    .line 443
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "must be monotic and have exactly one more entry than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_autoBrightnessLevels (size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "which must be strictly increasing.  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Auto-brightness will be disabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 482
    .end local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    :cond_2
    :goto_0
    const v3, 0x10e0064

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 485
    invoke-static {}, Lcom/android/server/FingerprintUnlockDataCollector;->getInstance()Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;

    .line 489
    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v10    # "dozeScaleFactor":F
    .end local v34    # "lux":[I
    .end local v36    # "screenBrightness":[I
    :cond_3
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 491
    const v3, 0x1120026

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_4

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 502
    :cond_4
    const-string v3, "ro.config.hw_smart_backlight"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 503
    .local v38, "smartBackLightConfig":I
    const/4 v3, 0x1

    move/from16 v0, v38

    if-ne v0, v3, :cond_f

    .line 504
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightSupported:Z

    .line 505
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 506
    const-string v3, "DisplayPowerController"

    const-string v4, "get ro.config.hw_smart_backlight = 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_backlight_enable"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 509
    .local v39, "smartBackLightSetting":I
    const/4 v3, -0x1

    move/from16 v0, v39

    if-ne v0, v3, :cond_e

    .line 510
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 511
    const-string v3, "DisplayPowerController"

    const-string v4, "get Settings.System.SMART_BACKLIGHT failed, set default value to 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_backlight_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    .end local v39    # "smartBackLightSetting":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-nez v3, :cond_10

    .line 526
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightSupported:Z

    if-eqz v3, :cond_9

    .line 527
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwSmartBackLightController()Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    if-eqz v3, :cond_8

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    invoke-interface {v3}, Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;->checkIfUsingHwSBL()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z

    .line 531
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z

    if-eqz v3, :cond_9

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-interface {v3, v4, v5, v9}, Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;->StartHwSmartBackLightController(Landroid/content/Context;Lcom/android/server/lights/LightsManager;Landroid/hardware/SensorManager;)V

    .line 540
    :cond_9
    :goto_2
    return-void

    .line 451
    .end local v38    # "smartBackLightConfig":I
    .restart local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v7    # "lightSensorWarmUpTimeConfig":I
    .restart local v10    # "dozeScaleFactor":F
    .restart local v34    # "lux":[I
    .restart local v36    # "screenBrightness":[I
    :cond_a
    const/4 v3, 0x0

    aget v3, v36, v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v33

    .line 452
    .local v33, "bottom":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move/from16 v0, v33

    if-le v3, v0, :cond_b

    .line 453
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") should be less than or equal to the first value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_autoBrightnessLcdBacklightValues ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_b
    move/from16 v0, v33

    if-ge v0, v8, :cond_c

    .line 459
    move/from16 v8, v33

    .line 462
    :cond_c
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHuaweiAutomaticBrightnessController()Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;

    move-result-object v2

    .line 463
    .local v2, "iadm":Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;
    if-eqz v2, :cond_d

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v17}, Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;->getInstance(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/content/Context;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto/16 :goto_0

    .line 471
    :cond_d
    new-instance v18, Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move/from16 v25, v0

    move-object/from16 v19, p0

    move-object/from16 v21, p4

    move-object/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v26, v10

    move/from16 v27, v11

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    move/from16 v32, v16

    invoke-direct/range {v18 .. v32}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto/16 :goto_0

    .line 515
    .end local v2    # "iadm":Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;
    .end local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v10    # "dozeScaleFactor":F
    .end local v33    # "bottom":I
    .end local v34    # "lux":[I
    .end local v36    # "screenBrightness":[I
    .restart local v38    # "smartBackLightConfig":I
    .restart local v39    # "smartBackLightSetting":I
    :cond_e
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 516
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Settings.System.SMART_BACKLIGHT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 520
    .end local v39    # "smartBackLightSetting":I
    :cond_f
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 521
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get ro.config.hw_smart_backlight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", don\'t support sbl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 536
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x2717

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLABCSensor:Landroid/hardware/Sensor;

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLABCSensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_9

    .line 538
    const-string v3, "DisplayPowerController"

    const-string v4, "[LABC] Get LABC Sensor failed !! "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLABCEnabled:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingBacklight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mImmeBright:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnForKeyguardDismiss()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerPolicyChangeFromDimming:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerPolicyChangeFromDimming:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method private animateScreenBrightness(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 1265
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1266
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    if-gez p1, :cond_2

    .line 1287
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z

    if-eqz v0, :cond_3

    if-lez p2, :cond_3

    .line 1274
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1275
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;->updateBrightnessState(I)V

    .line 1282
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    goto :goto_0

    .line 1283
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1277
    :cond_4
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1278
    const-string v0, "DisplayPowerController"

    const-string v1, "brightness changed but not animating"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1291
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 1300
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1301
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1304
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1308
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1326
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1328
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1333
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1339
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1345
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1346
    :cond_5
    if-ne p1, v3, :cond_8

    .line 1350
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1357
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 1358
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1365
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1366
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1369
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1370
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    .line 1373
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    goto/16 :goto_0

    .line 1376
    :cond_9
    if-eqz p2, :cond_b

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_a

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->checkPhoneWindowIsTop()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1384
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 1376
    goto :goto_1

    .line 1388
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 4

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1173
    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1174
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1176
    const/16 v0, 0x25b

    const-string v1, "DisplayPowerController Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1178
    :cond_0
    return-void
.end method

.method private blockScreenOnForKeyguardDismiss()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    .line 1157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnForKeyguardDismissBlockStartRealTime:J

    .line 1158
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until keyguard dismiss done."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_0
    return-void
.end method

.method private checkPhoneWindowIsTop()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1787
    const-string v3, "com.android.incallui"

    .line 1788
    .local v3, "incalluiPackageName":Ljava/lang/String;
    const-string v2, "com.android.incallui.InCallActivity"

    .line 1789
    .local v2, "incalluiClassName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1790
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1791
    .local v4, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v4, :cond_0

    move v5, v6

    .line 1801
    :goto_0
    return v5

    .line 1794
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1795
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1796
    .local v1, "cn":Landroid/content/ComponentName;
    const-string v5, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkPhoneWindowIsTop:pakcage name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",ClassName name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 1798
    goto :goto_0

    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    move v5, v6

    .line 1801
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1711
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1260
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1472
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1473
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1474
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1476
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 14
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/4 v7, 0x0

    const/high16 v13, 0x3fa00000    # 1.25f

    .line 1677
    array-length v8, p1

    if-nez v8, :cond_1

    .line 1678
    const-string v8, "DisplayPowerController"

    const-string v9, "brightness length is 0"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 1702
    :cond_0
    :goto_0
    return-object v3

    .line 1683
    :cond_1
    :try_start_0
    array-length v2, p1

    .line 1684
    .local v2, "n":I
    new-array v5, v2, [F

    .line 1685
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 1686
    .local v6, "y":[F
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, p1, v9

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v9

    aput v9, v6, v8

    .line 1687
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1688
    add-int/lit8 v8, v1, -0x1

    aget v8, p0, v8

    int-to-float v8, v8

    aput v8, v5, v1

    .line 1689
    aget v8, p1, v1

    invoke-static {v8}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v1

    .line 1687
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1692
    :cond_2
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1693
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 1694
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Auto-brightness spline: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_2
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget v8, p0, v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    cmpg-float v8, v4, v8

    if-gez v8, :cond_0

    .line 1696
    const-string v8, "DisplayPowerController"

    const-string v9, "  %7.1f: %7.1f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    mul-float/2addr v4, v13

    goto :goto_2

    .line 1700
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v8, "DisplayPowerController"

    const-string v9, "Could not create auto-brightness spline."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 1702
    goto :goto_0
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 1452
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1456
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 1458
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1459
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1460
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1469
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1464
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1465
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1466
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1594
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1595
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1630
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    .line 1631
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 1634
    :cond_3
    return-void
.end method

.method private getBrightness(Z)I
    .locals 1
    .param p1, "autoBrightnessAdjustmentChanged"    # Z

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "brightness":I
    if-eqz p1, :cond_0

    .line 695
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingBacklight:I

    .line 697
    :cond_0
    return v0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 1424
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1425
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v3, :cond_2

    if-nez p3, :cond_0

    .line 1431
    :cond_2
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProximitySensorEvent positive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1436
    if-eqz p3, :cond_3

    .line 1437
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1438
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1447
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1441
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1442
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 621
    new-instance v1, Lcom/android/server/display/DisplayPowerState;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    new-instance v4, Lcom/android/server/display/ColorFade;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/display/ColorFade;-><init>(I)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/DisplayPowerState;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 625
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoCustomBackLight:Lcom/android/server/lights/Light;

    .line 626
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mManualCustomBackLight:Lcom/android/server/lights/Light;

    .line 627
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 629
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 630
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 634
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 635
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 637
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwNormalizedRampAnimator()Lcom/android/server/HwServiceFactory$IHwRampAnimator;

    move-result-object v0

    .line 638
    .local v0, "iadm":Lcom/android/server/HwServiceFactory$IHwRampAnimator;
    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/server/HwServiceFactory$IHwRampAnimator;->getInstance(Lcom/android/server/display/DisplayPowerState;Landroid/util/IntProperty;)Lcom/android/server/display/RampAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 644
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 649
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_1
    return-void

    .line 641
    :cond_0
    new-instance v1, Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    goto :goto_0

    .line 650
    :catch_0
    move-exception v1

    goto :goto_1

    .line 627
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 632
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static isScreenOn(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1672
    if-eq p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1707
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1637
    packed-switch p0, :pswitch_data_0

    .line 1645
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1639
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1641
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1643
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1637
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1650
    packed-switch p0, :pswitch_data_0

    .line 1658
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1652
    :pswitch_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    goto :goto_0

    .line 1654
    :pswitch_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    goto :goto_0

    .line 1656
    :pswitch_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    goto :goto_0

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1550
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1551
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1537
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1538
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1524
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1525
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 605
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 609
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 610
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 611
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 612
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 613
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setLABCEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1486
    if-eqz p1, :cond_1

    .line 1487
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z

    .line 1489
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensor:Landroid/hardware/Sensor;

    const v3, 0x7a120

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z

    .line 1495
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 1479
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1482
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1483
    return-void
.end method

.method private setPowerStatus(Z)V
    .locals 1
    .param p1, "powerStatus"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setPowerStatus(Z)V

    .line 354
    :cond_0
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 1401
    if-eqz p1, :cond_1

    .line 1402
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1405
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1414
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1415
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1416
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1417
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1418
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1190
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 1191
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, v2, :cond_2

    move v1, v2

    .line 1192
    .local v1, "wasOn":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1196
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v1    # "wasOn":Z
    :cond_0
    :goto_1
    if-ne p1, v2, :cond_3

    move v0, v2

    .line 1209
    .local v0, "isOff":Z
    :goto_2
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v4, :cond_4

    .line 1211
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1212
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1213
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    .line 1215
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setPowerStatus(Z)V

    .line 1232
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v4, :cond_6

    :goto_4
    return v2

    .end local v0    # "isOff":Z
    :cond_2
    move v1, v3

    .line 1191
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1208
    goto :goto_2

    .line 1217
    .restart local v0    # "isOff":Z
    :cond_4
    if-nez v0, :cond_1

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v4, :cond_1

    .line 1218
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1219
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 1220
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 1225
    :goto_5
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1227
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setPowerStatus(Z)V

    goto :goto_3

    .line 1222
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_5

    :cond_6
    move v2, v3

    .line 1232
    goto :goto_4

    .line 1197
    .end local v0    # "isOff":Z
    .restart local v1    # "wasOn":Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 1181
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 1182
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1184
    .local v0, "delay":J
    const/16 v2, 0x25b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayPowerController Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1185
    const-wide/32 v2, 0x20000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1187
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOnForKeyguardDismiss()V
    .locals 6

    .prologue
    .line 1163
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    if-eqz v2, :cond_0

    .line 1164
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnForKeyguardDismissBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1166
    .local v0, "delay":J
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on for keyguard dismiss after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 18

    .prologue
    .line 703
    const/4 v8, 0x0

    .line 704
    .local v8, "mustInitialize":Z
    const/4 v3, 0x0

    .line 706
    .local v3, "autoBrightnessAdjustmentChanged":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 707
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v14, :cond_1

    .line 709
    monitor-exit v15

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v14, :cond_5

    .line 713
    new-instance v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 714
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 715
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 716
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 717
    const/4 v8, 0x1

    .line 718
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-eqz v14, :cond_2

    .line 719
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatus:Z

    .line 720
    const/4 v3, 0x1

    .line 755
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v14, :cond_b

    const/4 v9, 0x1

    .line 756
    .local v9, "mustNotify":Z
    :goto_2
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    if-eqz v8, :cond_3

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 766
    :cond_3
    const/4 v6, -0x1

    .line 767
    .local v6, "brightness":I
    const/4 v10, 0x0

    .line 768
    .local v10, "performScreenOffTransition":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    packed-switch v14, :pswitch_data_0

    .line 786
    const/4 v13, 0x2

    .line 789
    .local v13, "state":I
    :cond_4
    :goto_3
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    if-nez v14, :cond_d

    if-nez v13, :cond_d

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 722
    .end local v6    # "brightness":I
    .end local v9    # "mustNotify":Z
    .end local v10    # "performScreenOffTransition":Z
    .end local v13    # "state":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v14, :cond_2

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v16, v0

    cmpl-float v14, v14, v16

    if-eqz v14, :cond_9

    const/4 v3, 0x1

    .line 725
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v14, v0, :cond_a

    const/4 v14, 0x1

    :goto_5
    sput-boolean v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessModeChanged:Z

    .line 728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v14, v0, :cond_6

    .line 730
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerPolicyChangeFromDimming:Z

    .line 732
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_7

    .line 733
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserIdChange:Z

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->userId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserId:I

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/lights/Light;->updateUserId(I)V

    .line 737
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 738
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessModeChanged:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserIdChange:Z

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v14, :cond_8

    .line 739
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustFactor(F)V

    .line 740
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 741
    const-string v14, "DisplayPowerController"

    const-string v16, "AdjustPositionBrightness set 0"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserIdChange:Z

    .line 745
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v16, v0

    or-int v14, v14, v16

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 746
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 747
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 748
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->writeAutoBrightnessDbEnable()V

    .line 750
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatus:Z

    if-nez v14, :cond_2

    .line 751
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 723
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 725
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 755
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 756
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 770
    .restart local v6    # "brightness":I
    .restart local v9    # "mustNotify":Z
    .restart local v10    # "performScreenOffTransition":Z
    :pswitch_0
    const/4 v13, 0x1

    .line 771
    .restart local v13    # "state":I
    const/4 v10, 0x1

    .line 772
    goto/16 :goto_3

    .line 774
    .end local v13    # "state":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v14, :cond_c

    .line 775
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 779
    .restart local v13    # "state":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v14, :cond_4

    .line 780
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_3

    .line 777
    .end local v13    # "state":I
    :cond_c
    const/4 v13, 0x3

    .restart local v13    # "state":I
    goto :goto_6

    .line 792
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v14, :cond_3c

    .line 793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v14, :cond_38

    const/4 v14, 0x1

    if-eq v13, v14, :cond_38

    .line 794
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 795
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 797
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 824
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 826
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 832
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_10

    .line 834
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 842
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v14, :cond_11

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensorbyPhone:Z

    if-nez v14, :cond_11

    .line 844
    const/4 v13, 0x1

    .line 850
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-nez v14, :cond_3d

    .line 851
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightSupported:Z

    if-eqz v14, :cond_13

    .line 852
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useSmartBacklight:Z

    if-eq v14, v15, :cond_13

    .line 853
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_12

    .line 854
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mPowerRequest.useSmartBacklight change "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useSmartBacklight:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useSmartBacklight:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z

    .line 859
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z

    if-eqz v14, :cond_14

    .line 860
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z

    invoke-interface {v14, v13, v15}, Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;->updatePowerState(IZ)V

    .line 872
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v13

    .line 876
    const/4 v14, 0x1

    if-ne v13, v14, :cond_15

    .line 877
    const/4 v6, 0x0

    .line 878
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWakeupFromSleep:Z

    .line 879
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximityPositive:Z

    .line 887
    :cond_15
    const/4 v4, 0x0

    .line 888
    .local v4, "autoBrightnessEnabled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->userId:I

    invoke-virtual {v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->updateCurrentUserId(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_auto_brightness_adj"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->userId:I

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 890
    .local v2, "adjustment":F
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    if-nez v14, :cond_16

    .line 891
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 894
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-nez v14, :cond_43

    .line 895
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_3e

    const/4 v14, 0x3

    if-eq v13, v14, :cond_17

    const/4 v14, 0x4

    if-ne v13, v14, :cond_3e

    :cond_17
    const/4 v5, 0x1

    .line 897
    .local v5, "autoBrightnessEnabledInDoze":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v14, :cond_3f

    const/4 v14, 0x2

    if-eq v13, v14, :cond_18

    if-eqz v5, :cond_3f

    :cond_18
    if-gez v6, :cond_3f

    const/4 v4, 0x1

    .line 900
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v14, 0x2

    if-eq v13, v14, :cond_40

    const/4 v14, 0x1

    :goto_c
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v2, v14, v0}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZZ)V

    .line 902
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->updatePowerPolicy(I)V

    .line 903
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eq v14, v4, :cond_19

    .line 904
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mode change : autoBrightnessEnabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",adjustment="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 907
    :cond_19
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    if-eqz v14, :cond_1b

    .line 908
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightness:I

    if-lez v14, :cond_41

    .line 909
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightness:I

    invoke-virtual {v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->updateIntervenedAutoBrightness(I)V

    .line 910
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    .line 914
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iput-boolean v4, v14, Lcom/android/server/display/RampAnimator;->mIsAutoBrightnessMode:Z

    .line 916
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessModeChanged:Z

    if-eqz v14, :cond_1a

    .line 917
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iput-boolean v4, v14, Lcom/android/server/display/RampAnimator;->mIsFirstValidAutoBrightness:Z

    .line 918
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessModeChanged:Z

    .line 920
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->getUpdateAutoBrightnessCount()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightness:I

    if-lez v14, :cond_42

    const/4 v14, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v4, v0, v14, v1}, Lcom/android/server/display/RampAnimator;->updateBrightnessRampPara(ZIZI)V

    .line 923
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    invoke-virtual {v14, v4}, Lcom/android/server/lights/Light;->updateBrightnessAdjustMode(Z)V

    .line 948
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessWaitMode:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mLastWaitBrightnessMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessWaitRet:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/android/server/display/DisplayPowerController;->waitScreenBrightness(IZZZ)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 949
    const/4 v6, 0x0

    .line 950
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/WindowManagerPolicy;->setInterceptInputForWaitBrightness(Z)V

    .line 959
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v14, :cond_1d

    if-eqz v6, :cond_1d

    .line 961
    const/16 v6, 0xff

    .line 965
    :cond_1d
    const/4 v12, 0x0

    .line 966
    .local v12, "slowChange":Z
    if-gez v6, :cond_4f

    .line 967
    if-eqz v4, :cond_1f

    .line 968
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-nez v14, :cond_4b

    .line 969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v6

    .line 973
    :goto_10
    if-gez v6, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/AutomaticBrightnessController;->getLightSensorEnableTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0xc3

    cmp-long v14, v14, v16

    if-lez v14, :cond_1f

    .line 974
    const/4 v14, -0x2

    if-eq v6, v14, :cond_1e

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_brightness"

    const/16 v16, 0x64

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 977
    :cond_1e
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_1f

    .line 978
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed to get auto brightness so set brightness based on SCREEN_BRIGHTNESS:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_1f
    if-ltz v6, :cond_4d

    .line 984
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v6

    .line 985
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUseSensorHubLABC:Z

    if-nez v14, :cond_4c

    .line 986
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v14, :cond_20

    if-nez v3, :cond_20

    .line 987
    const/4 v12, 0x1

    .line 995
    :cond_20
    :goto_11
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1003
    :goto_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustmentChanged:Z

    .line 1005
    if-gez v6, :cond_22

    const/4 v14, 0x3

    if-eq v13, v14, :cond_21

    const/4 v14, 0x4

    if-ne v13, v14, :cond_22

    .line 1007
    :cond_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 1014
    :cond_22
    if-gez v6, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-nez v14, :cond_23

    .line 1015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v6

    .line 1016
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    if-eqz v14, :cond_23

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v14, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateIntervenedAutoBrightness(I)V

    .line 1022
    :cond_23
    const/4 v14, 0x2

    if-ne v13, v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v14, :cond_25

    .line 1024
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v6, v14, :cond_24

    .line 1025
    add-int/lit8 v14, v6, -0xa

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1028
    :cond_24
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set brightness to DIM brightness:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_28

    .line 1034
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v6, v14, :cond_26

    .line 1035
    add-int/lit8 v14, v6, -0xa

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1038
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v14, :cond_27

    .line 1039
    const/4 v12, 0x0

    .line 1041
    :cond_27
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1046
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v14, :cond_2b

    .line 1047
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v6, v14, :cond_29

    .line 1048
    div-int/lit8 v14, v6, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1050
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v14, :cond_2a

    .line 1051
    const/4 v12, 0x0

    .line 1053
    :cond_2a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 1060
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v14, :cond_2f

    .line 1061
    const/4 v14, 0x2

    if-eq v13, v14, :cond_2c

    const/4 v14, 0x3

    if-ne v13, v14, :cond_52

    .line 1063
    :cond_2c
    const/4 v14, 0x2

    if-ne v13, v14, :cond_50

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mImmeBright:Z

    if-nez v14, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWakeupFromSleep:Z

    if-eqz v14, :cond_50

    .line 1065
    :cond_2d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mImmeBright:Z

    .line 1066
    if-lez v6, :cond_2e

    .line 1067
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWakeupFromSleep:Z

    .line 1069
    :cond_2e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1081
    :cond_2f
    :goto_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessWaitMode:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLastWaitBrightnessMode:Z

    .line 1087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v14

    if-nez v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v14

    if-nez v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v14

    if-eqz v14, :cond_53

    const/4 v11, 0x1

    .line 1092
    .local v11, "ready":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v14}, Landroid/view/WindowManagerPolicy;->getInterceptInputForWaitBrightness()Z

    move-result v14

    if-eqz v14, :cond_30

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessWaitMode:Z

    if-nez v14, :cond_30

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    if-nez v14, :cond_30

    if-eqz v11, :cond_30

    .line 1094
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/WindowManagerPolicy;->setInterceptInputForWaitBrightness(Z)V

    .line 1098
    :cond_30
    if-eqz v11, :cond_54

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v14}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v14

    if-nez v14, :cond_54

    const/4 v7, 0x1

    .line 1102
    .local v7, "finished":Z
    :goto_15
    if-eqz v11, :cond_31

    const/4 v14, 0x1

    if-eq v13, v14, :cond_31

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_31

    .line 1104
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v14}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    .line 1109
    :cond_31
    if-nez v7, :cond_33

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v14, :cond_33

    .line 1110
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_32

    .line 1111
    const-string v14, "DisplayPowerController"

    const-string v15, "Unfinished business..."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_32
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1114
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1118
    :cond_33
    if-eqz v11, :cond_35

    if-eqz v9, :cond_35

    .line 1120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1121
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v14, :cond_34

    .line 1122
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1124
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_34

    .line 1125
    const-string v14, "DisplayPowerController"

    const-string v16, "Display ready!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_34
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1129
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 1133
    :cond_35
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v14, :cond_0

    .line 1134
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_36

    .line 1135
    const-string v14, "DisplayPowerController"

    const-string v15, "Finished business..."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_36
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG_FPLOG:Z

    if-eqz v14, :cond_37

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;

    if-eqz v14, :cond_37

    if-lez v6, :cond_37

    .line 1140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;

    invoke-virtual {v14}, Lcom/android/server/FingerprintUnlockDataCollector;->reportScreenTurnedOn()V

    .line 1144
    :cond_37
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto/16 :goto_0

    .line 800
    .end local v2    # "adjustment":F
    .end local v4    # "autoBrightnessEnabled":Z
    .end local v7    # "finished":Z
    .end local v11    # "ready":Z
    .end local v12    # "slowChange":Z
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v14, :cond_39

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v14, :cond_39

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_39

    const/4 v14, 0x1

    if-eq v13, v14, :cond_39

    .line 804
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_7

    .line 807
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-nez v14, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v14, :cond_3a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3a

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v14, :cond_3a

    .line 812
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_7

    .line 817
    :cond_3a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-nez v14, :cond_3b

    .line 818
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 821
    :cond_3b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7

    .line 838
    :cond_3c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_8

    .line 863
    :cond_3d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mLABCSensor:Landroid/hardware/Sensor;

    if-eqz v14, :cond_14

    .line 864
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLABCEnabled:Z

    .line 865
    invoke-static {v13}, Lcom/android/server/display/DisplayPowerController;->wantScreenOn(I)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/DisplayPowerController;->setLABCEnabled(Z)V

    goto/16 :goto_9

    .line 895
    .restart local v2    # "adjustment":F
    .restart local v4    # "autoBrightnessEnabled":Z
    :cond_3e
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 897
    .restart local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_3f
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 900
    :cond_40
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 912
    :cond_41
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/display/RampAnimator;->mAutoBrightnessIntervened:Z

    goto/16 :goto_d

    .line 920
    :cond_42
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 926
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z

    if-eqz v14, :cond_1b

    .line 927
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_47

    const/4 v14, 0x3

    if-eq v13, v14, :cond_44

    const/4 v14, 0x4

    if-ne v13, v14, :cond_47

    :cond_44
    const/4 v5, 0x1

    .line 929
    .restart local v5    # "autoBrightnessEnabledInDoze":Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v14, :cond_48

    const/4 v14, 0x2

    if-eq v13, v14, :cond_45

    if-eqz v5, :cond_48

    :cond_45
    if-gez v6, :cond_48

    const/4 v4, 0x1

    .line 932
    :goto_17
    if-eqz v4, :cond_49

    if-eqz v3, :cond_49

    .line 933
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mSetAutoBackLight:I

    .line 934
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_46

    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LABC]  A = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mSetAutoBackLight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_46
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutoCustomBackLight:Lcom/android/server/lights/Light;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mSetAutoBackLight:I

    invoke-virtual {v14, v15}, Lcom/android/server/lights/Light;->sendCustomBackLight(I)V

    .line 936
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustmentChanged:Z

    .line 937
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatus:Z

    goto/16 :goto_0

    .line 927
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_47
    const/4 v5, 0x0

    goto :goto_16

    .line 929
    .restart local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_48
    const/4 v4, 0x0

    goto :goto_17

    .line 939
    :cond_49
    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatus:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1b

    .line 940
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_4a

    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LABC]  M = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_4a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mManualCustomBackLight:Lcom/android/server/lights/Light;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v14, v15}, Lcom/android/server/lights/Light;->sendCustomBackLight(I)V

    .line 942
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatus:Z

    goto/16 :goto_f

    .line 971
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    .restart local v12    # "slowChange":Z
    :cond_4b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/DisplayPowerController;->getBrightness(Z)I

    move-result v6

    goto/16 :goto_10

    .line 991
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustmentChanged:Z

    if-nez v14, :cond_20

    .line 992
    const/4 v12, 0x1

    goto/16 :goto_11

    .line 997
    :cond_4d
    const/4 v14, -0x2

    if-ne v6, v14, :cond_4e

    const/4 v14, 0x1

    :goto_18
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_12

    :cond_4e
    const/4 v14, 0x0

    goto :goto_18

    .line 1000
    :cond_4f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_12

    .line 1071
    :cond_50
    if-eqz v12, :cond_51

    const/16 v14, 0x28

    :goto_19
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_13

    :cond_51
    const/16 v14, 0xc8

    goto :goto_19

    .line 1075
    :cond_52
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1076
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    if-eqz v14, :cond_2f

    .line 1077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->saveOffsetAlgorithmParas()V

    goto/16 :goto_13

    .line 1087
    :cond_53
    const/4 v11, 0x0

    goto/16 :goto_14

    .line 1098
    .restart local v11    # "ready":Z
    :cond_54
    const/4 v7, 0x0

    goto/16 :goto_15

    .line 1128
    .restart local v7    # "finished":Z
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitScreenBrightness(IZZZ)Z
    .locals 4
    .param p1, "displayState"    # I
    .param p2, "curReqWaitBright"    # Z
    .param p3, "lastReqWaitBright"    # Z
    .param p4, "dismiss"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1236
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_Controller:Z

    if-eqz v1, :cond_0

    .line 1237
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitScreenBrightness displayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curReqWaitBright = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastReqWaitBright = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dismiss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1244
    if-eqz p2, :cond_2

    .line 1256
    :cond_1
    :goto_0
    return v0

    .line 1246
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 1247
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOnForKeyguardDismiss()V

    .line 1248
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->waitKeyguardDismissDone(Landroid/view/WindowManagerPolicy$KeyguardDismissDoneListener;)V

    .line 1256
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1251
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnForKeyguardDismissUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnForKeyguardDismissUnblocker;

    if-eqz v1, :cond_3

    .line 1252
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnForKeyguardDismiss()V

    .line 1253
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->cancelWaitKeyguardDismissDone()V

    goto :goto_1
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1663
    packed-switch p0, :pswitch_data_0

    .line 1668
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1666
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1663
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeAutoBrightnessDbEnable()V
    .locals 2

    .prologue
    .line 1805
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->NEED_NEW_BRIGHTNESS_PROCESS:Z

    if-nez v0, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1808
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->writeAutoBrightnessDbEnable(Z)V

    goto :goto_0

    .line 1810
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerPolicyChangeFromDimming:Z

    if-nez v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->writeAutoBrightnessDbEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1563
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1564
    const-string v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1574
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1591
    return-void

    .line 1571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 566
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_Controller:Z

    if-eqz v1, :cond_0

    .line 568
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 577
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 578
    const/4 v0, 0x1

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 582
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 583
    const/4 v0, 0x1

    .line 589
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 590
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 593
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 594
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 595
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 598
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 584
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 586
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBacklightBrightness(Landroid/os/PowerManager$BacklightBrightness;)V
    .locals 1
    .param p1, "backlightBrightness"    # Landroid/os/PowerManager$BacklightBrightness;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setBacklightBrightness(Landroid/os/PowerManager$BacklightBrightness;)V

    .line 359
    return-void
.end method

.method public updateAutoBrightnessAdjustFactor(F)V
    .locals 1
    .param p1, "adjustFactor"    # F

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessAdjustFactor(F)V

    .line 363
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1152
    return-void
.end method

.method public updateProximityState(Z)V
    .locals 3
    .param p1, "proximityState"    # Z

    .prologue
    .line 1817
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1818
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProximityState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityPositive:Z

    .line 1821
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampAnimator;->updateProximityState(Z)V

    .line 1822
    return-void
.end method

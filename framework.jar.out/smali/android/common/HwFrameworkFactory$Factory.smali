.class public interface abstract Landroid/common/HwFrameworkFactory$Factory;
.super Ljava/lang/Object;
.source "HwFrameworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/common/HwFrameworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createHwInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
.end method

.method public abstract createHwInterpolator(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
.end method

.method public abstract getCoverManager()Landroid/cover/IHwCoverManager;
.end method

.method public abstract getHuaweiChooserIntentImpl()Landroid/content/Intent;
.end method

.method public abstract getHuaweiDevicePolicyManagerImpl()Landroid/hdm/HwDeviceManager$IHwDeviceManager;
.end method

.method public abstract getHuaweiResolverActivityImpl(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getHuaweiWallpaperManager()Landroid/common/HwFrameworkFactory$IHwWallpaperManager;
.end method

.method public abstract getHwAnimationManager()Landroid/common/HwAnimationManager;
.end method

.method public abstract getHwApplicationPackageManager()Landroid/common/HwPackageManager;
.end method

.method public abstract getHwDrmManager()Landroid/common/HwDrmManager;
.end method

.method public abstract getHwFlogManager()Landroid/common/HwFlogManager;
.end method

.method public abstract getHwHwAudioRecord()Landroid/media/IHwAudioRecord;
.end method

.method public abstract getHwInnerConnectivityManager()Landroid/net/HwInnerConnectivityManager;
.end method

.method public abstract getHwInnerLocationManager()Landroid/location/IHwInnerLocationManager;
.end method

.method public abstract getHwInnerNetworkManager()Landroid/net/wifi/HwInnerNetworkManager;
.end method

.method public abstract getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;
.end method

.method public abstract getHwInnerWifiManager()Landroid/net/wifi/HwInnerWifiManager;
.end method

.method public abstract getHwInnerWifiP2pManager()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;
.end method

.method public abstract getHwInputMethodService(Landroid/content/Context;)Landroid/inputmethodservice/IHwInputMethodService;
.end method

.method public abstract getHwInstrumentedView()Landroid/view/IHwInstrumentedView;
.end method

.method public abstract getHwKeyguardManager()Landroid/app/HwKeyguardManager;
.end method

.method public abstract getHwLocalePickerManager()Lcom/android/internal/app/HwLocalePickerManager;
.end method

.method public abstract getHwMediaMonitor()Landroid/media/IHwMediaMonitor;
.end method

.method public abstract getHwMediaRecorder()Landroid/media/IHwMediaRecorder;
.end method

.method public abstract getHwMediaScannerManager()Landroid/common/HwMediaScannerManager;
.end method

.method public abstract getHwMediaSession()Landroid/media/session/HwMediaSessionManager;
.end method

.method public abstract getHwMediaStoreManager()Landroid/provider/IHwMediaStore;
.end method

.method public abstract getHwMtpDatabaseManager()Landroid/mtp/HwMtpDatabaseManager;
.end method

.method public abstract getHwNotificationResource()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
.end method

.method public abstract getHwNsdImpl()Landroid/view/IHwNsdImpl;
.end method

.method public abstract getHwPackageParser()Landroid/content/pm/IHwPackageParser;
.end method

.method public abstract getHwPerformance()Lcom/huawei/hwperformance/HwPerformance;
.end method

.method public abstract getHwPowerProfileManager()Lcom/android/internal/os/IHwPowerProfileManager;
.end method

.method public abstract getHwResource(I)Landroid/rms/HwSysResource;
.end method

.method public abstract getHwSettingsManager()Landroid/common/HwSettingsManager;
.end method

.method public abstract getHwStateListAnimator()Lhuawei/android/animation/HwStateListAnimator;
.end method

.method public abstract getHwSystemManager()Landroid/common/HwFrameworkFactory$IHwSystemManager;
.end method

.method public abstract getHwThemeManagerFactory()Landroid/hwtheme/IHwThemeManagerFactory;
.end method

.method public abstract getHwViewRootImpl()Landroid/view/IHwViewRootImpl;
.end method

.method public abstract getHwWallpaperInfoStub(Landroid/app/WallpaperInfo;)Landroid/app/IHwWallpaperInfoStub;
.end method

.method public abstract getHwWidgetManager()Landroid/widget/HwWidgetManager;
.end method

.method public abstract getLogException()Landroid/util/LogException;
.end method

.method public abstract getPasswordUtil()Landroid/encrypt/PasswordUtil;
.end method

.method public abstract getSecImmHelper(Lcom/android/internal/view/IInputMethodManager;)Landroid/view/inputmethod/IHwSecImmHelper;
.end method

.method public abstract getVRSystemServiceManager()Landroid/vrsystem/IVRSystemServiceManager;
.end method

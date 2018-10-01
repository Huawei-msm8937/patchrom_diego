.class public Landroid/common/HwFrameworkFactory;
.super Ljava/lang/Object;
.source "HwFrameworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/common/HwFrameworkFactory$IHwSystemManager;,
        Landroid/common/HwFrameworkFactory$IHwWallpaperManager;,
        Landroid/common/HwFrameworkFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwFrameworkFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static obj:Landroid/common/HwFrameworkFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-object v0, Landroid/common/HwFrameworkFactory;->obj:Landroid/common/HwFrameworkFactory$Factory;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/common/HwFrameworkFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method public static createHwInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 463
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 464
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0, p0, p1, p2}, Landroid/common/HwFrameworkFactory$Factory;->createHwInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 467
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createHwInterpolator(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 472
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 473
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/common/HwFrameworkFactory$Factory;->createHwInterpolator(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 476
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCoverManager()Landroid/cover/IHwCoverManager;
    .locals 2

    .prologue
    .line 512
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 513
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getCoverManager()Landroid/cover/IHwCoverManager;

    move-result-object v1

    .line 516
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/cover/HwCoverManagerDummy;->getDefault()Landroid/cover/HwCoverManagerDummy;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHuaweiChooserIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 542
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 543
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 544
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHuaweiChooserIntentImpl()Landroid/content/Intent;

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiDevicePolicyManager()Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    .locals 2

    .prologue
    .line 624
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 625
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHuaweiDevicePolicyManagerImpl()Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    move-result-object v1

    .line 628
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiResolverActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 551
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0, p0}, Landroid/common/HwFrameworkFactory$Factory;->getHuaweiResolverActivityImpl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 554
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiWallpaperManager()Landroid/common/HwFrameworkFactory$IHwWallpaperManager;
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 160
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHuaweiWallpaperManager()Landroid/common/HwFrameworkFactory$IHwWallpaperManager;

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwAnimationManager()Landroid/common/HwAnimationManager;
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 482
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwAnimationManager()Landroid/common/HwAnimationManager;

    move-result-object v1

    .line 485
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/common/HwAnimationManagerDummy;->getDefault()Landroid/common/HwAnimationManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwDrmManager()Landroid/common/HwDrmManager;
    .locals 2

    .prologue
    .line 522
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 523
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwDrmManager()Landroid/common/HwDrmManager;

    move-result-object v1

    .line 526
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/common/HwDrmManagerDummy;->getDefault()Landroid/common/HwDrmManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwFlogManager()Landroid/common/HwFlogManager;
    .locals 2

    .prologue
    .line 607
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 608
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwFlogManager()Landroid/common/HwFlogManager;

    move-result-object v1

    .line 611
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/common/HwFlogManagerDummy;->getDefault()Landroid/common/HwFlogManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwHwAudioRecord()Landroid/media/IHwAudioRecord;
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 599
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwHwAudioRecord()Landroid/media/IHwAudioRecord;

    move-result-object v1

    .line 602
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/media/HwAudioRecordDummy;->getDefault()Landroid/media/IHwAudioRecord;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwInnerConnectivityManager()Landroid/net/HwInnerConnectivityManager;
    .locals 2

    .prologue
    .line 616
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 617
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 618
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInnerConnectivityManager()Landroid/net/HwInnerConnectivityManager;

    move-result-object v1

    .line 620
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwInnerLocationManager()Landroid/location/IHwInnerLocationManager;
    .locals 2

    .prologue
    .line 682
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 683
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInnerLocationManager()Landroid/location/IHwInnerLocationManager;

    move-result-object v1

    .line 686
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwInnerNetworkManager()Landroid/net/wifi/HwInnerNetworkManager;
    .locals 2

    .prologue
    .line 634
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 635
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInnerNetworkManager()Landroid/net/wifi/HwInnerNetworkManager;

    move-result-object v1

    .line 638
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/net/wifi/DummyHwInnerNetworkManager;->getDefault()Landroid/net/wifi/HwInnerNetworkManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwInnerWifiManager()Landroid/net/wifi/HwInnerWifiManager;
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInnerWifiManager()Landroid/net/wifi/HwInnerWifiManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwInnerWifiP2pManager()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInnerWifiP2pManager()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwInputMethodService(Landroid/content/Context;)Landroid/inputmethodservice/IHwInputMethodService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 656
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v0, p0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInputMethodService(Landroid/content/Context;)Landroid/inputmethodservice/IHwInputMethodService;

    move-result-object v1

    .line 659
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwInstrumentedView()Landroid/view/IHwInstrumentedView;
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 675
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 676
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwInstrumentedView()Landroid/view/IHwInstrumentedView;

    move-result-object v1

    .line 678
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwKeyguardManager()Landroid/app/HwKeyguardManager;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwKeyguardManager()Landroid/app/HwKeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwLocalePickerManager()Lcom/android/internal/app/HwLocalePickerManager;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwLocalePickerManager()Lcom/android/internal/app/HwLocalePickerManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwMediaMonitor()Landroid/media/IHwMediaMonitor;
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 704
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 705
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwMediaMonitor()Landroid/media/IHwMediaMonitor;

    move-result-object v1

    .line 707
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/media/HwMediaMonitorDummy;->getDefault()Landroid/media/IHwMediaMonitor;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwMediaRecorder()Landroid/media/IHwMediaRecorder;
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 590
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwMediaRecorder()Landroid/media/IHwMediaRecorder;

    move-result-object v1

    .line 593
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/media/HwMediaRecorderDummy;->getDefault()Landroid/media/IHwMediaRecorder;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwMediaScannerManager()Landroid/common/HwMediaScannerManager;
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 441
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwMediaScannerManager()Landroid/common/HwMediaScannerManager;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/common/HwMediaScannerManagerDummy;->getDefault()Landroid/common/HwMediaScannerManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwMediaSession()Landroid/media/session/HwMediaSessionManager;
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 317
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwMediaSession()Landroid/media/session/HwMediaSessionManager;

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/media/session/HwMediaSessionManagerDummy;->getDefault()Landroid/media/session/HwMediaSessionManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwMediaStoreManager()Landroid/provider/IHwMediaStore;
    .locals 2

    .prologue
    .line 424
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 425
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwMediaStoreManager()Landroid/provider/IHwMediaStore;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/provider/HwMediaStoreDummy;->getDefault()Landroid/provider/IHwMediaStore;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwMtpDatabaseManager()Landroid/mtp/HwMtpDatabaseManager;
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 433
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwMtpDatabaseManager()Landroid/mtp/HwMtpDatabaseManager;

    move-result-object v1

    .line 436
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/mtp/HwMtpDatabaseManagerDummy;->getDefault()Landroid/mtp/HwMtpDatabaseManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwNotificationResource()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    .locals 2

    .prologue
    .line 713
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 714
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 715
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwNotificationResource()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    move-result-object v1

    .line 717
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwNsdImpl()Landroid/view/IHwNsdImpl;
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 580
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 581
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwNsdImpl()Landroid/view/IHwNsdImpl;

    move-result-object v1

    .line 583
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwPackageManager()Landroid/common/HwPackageManager;
    .locals 2

    .prologue
    .line 532
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 533
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwApplicationPackageManager()Landroid/common/HwPackageManager;

    move-result-object v1

    .line 536
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwPackageParser()Landroid/content/pm/IHwPackageParser;
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 327
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwPackageParser()Landroid/content/pm/IHwPackageParser;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwPerformance()Lcom/huawei/hwperformance/HwPerformance;
    .locals 2

    .prologue
    .line 692
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 693
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 694
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwPerformance()Lcom/huawei/hwperformance/HwPerformance;

    move-result-object v1

    .line 696
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/huawei/hwperformance/HwPerformanceDummy;->getDefault()Lcom/huawei/hwperformance/HwPerformance;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwPowerProfileManager()Lcom/android/internal/os/IHwPowerProfileManager;
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 570
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 571
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwPowerProfileManager()Lcom/android/internal/os/IHwPowerProfileManager;

    move-result-object v1

    .line 573
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/internal/os/HwPowerProfileManagerDummy;->getDefault()Lcom/android/internal/os/IHwPowerProfileManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwResource(I)Landroid/rms/HwSysResource;
    .locals 2
    .param p0, "resourceType"    # I

    .prologue
    .line 343
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 344
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, p0}, Landroid/common/HwFrameworkFactory$Factory;->getHwResource(I)Landroid/rms/HwSysResource;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwSettingsManager()Landroid/common/HwSettingsManager;
    .locals 2

    .prologue
    .line 491
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 492
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v1

    .line 495
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/common/HwSettingsManagerDummy;->getDefault()Landroid/common/HwSettingsManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwStateListAnimator()Lhuawei/android/animation/HwStateListAnimator;
    .locals 2

    .prologue
    .line 644
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 645
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 646
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwStateListAnimator()Lhuawei/android/animation/HwStateListAnimator;

    move-result-object v1

    .line 648
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lhuawei/android/animation/HwStateListAnimatorDummy;->getDefault()Lhuawei/android/animation/HwStateListAnimator;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwSystemManager()Landroid/common/HwFrameworkFactory$IHwSystemManager;
    .locals 2

    .prologue
    .line 409
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 410
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwSystemManager()Landroid/common/HwFrameworkFactory$IHwSystemManager;

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwThemeManagerFactory()Landroid/hwtheme/IHwThemeManagerFactory;
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 503
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 504
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwThemeManagerFactory()Landroid/hwtheme/IHwThemeManagerFactory;

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwViewRootImpl()Landroid/view/IHwViewRootImpl;
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 334
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwViewRootImpl()Landroid/view/IHwViewRootImpl;

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWallpaperInfoStub(Landroid/app/WallpaperInfo;)Landroid/app/IHwWallpaperInfoStub;
    .locals 2
    .param p0, "ai"    # Landroid/app/WallpaperInfo;

    .prologue
    .line 559
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 560
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0, p0}, Landroid/common/HwFrameworkFactory$Factory;->getHwWallpaperInfoStub(Landroid/app/WallpaperInfo;)Landroid/app/IHwWallpaperInfoStub;

    move-result-object v1

    .line 563
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwWidgetManager()Landroid/widget/HwWidgetManager;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getHwWidgetManager()Landroid/widget/HwWidgetManager;

    move-result-object v0

    return-object v0
.end method

.method private static getImplObject()Landroid/common/HwFrameworkFactory$Factory;
    .locals 6

    .prologue
    .line 170
    sget-object v2, Landroid/common/HwFrameworkFactory;->obj:Landroid/common/HwFrameworkFactory$Factory;

    if-eqz v2, :cond_0

    .line 171
    sget-object v2, Landroid/common/HwFrameworkFactory;->obj:Landroid/common/HwFrameworkFactory$Factory;

    .line 186
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 173
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Landroid/common/HwFrameworkFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_0
    const-string/jumbo v2, "huawei.android.common.HwFrameworkFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/common/HwFrameworkFactory$Factory;

    sput-object v2, Landroid/common/HwFrameworkFactory;->obj:Landroid/common/HwFrameworkFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    sget-object v2, Landroid/common/HwFrameworkFactory;->obj:Landroid/common/HwFrameworkFactory$Factory;

    if-eqz v2, :cond_1

    .line 182
    const-string v2, "HwFrameworkFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v2, Landroid/common/HwFrameworkFactory;->obj:Landroid/common/HwFrameworkFactory$Factory;

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwFrameworkFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 185
    :cond_1
    const-string v2, "HwFrameworkFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLogException()Landroid/util/LogException;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getLogException()Landroid/util/LogException;

    move-result-object v0

    return-object v0
.end method

.method public static getPasswordUtil()Landroid/encrypt/PasswordUtil;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getPasswordUtil()Landroid/encrypt/PasswordUtil;

    move-result-object v0

    return-object v0
.end method

.method public static getSecImmHelper(Lcom/android/internal/view/IInputMethodManager;)Landroid/view/inputmethod/IHwSecImmHelper;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/view/IInputMethodManager;

    .prologue
    .line 665
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 666
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 667
    invoke-interface {v0, p0}, Landroid/common/HwFrameworkFactory$Factory;->getSecImmHelper(Lcom/android/internal/view/IInputMethodManager;)Landroid/view/inputmethod/IHwSecImmHelper;

    move-result-object v1

    .line 669
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVRSystemServiceManager()Landroid/vrsystem/IVRSystemServiceManager;
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getImplObject()Landroid/common/HwFrameworkFactory$Factory;

    move-result-object v0

    .line 396
    .local v0, "obj":Landroid/common/HwFrameworkFactory$Factory;
    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0}, Landroid/common/HwFrameworkFactory$Factory;->getVRSystemServiceManager()Landroid/vrsystem/IVRSystemServiceManager;

    move-result-object v1

    .line 399
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

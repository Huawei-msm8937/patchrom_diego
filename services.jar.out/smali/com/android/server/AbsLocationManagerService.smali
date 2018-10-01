.class public abstract Lcom/android/server/AbsLocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "AbsLocationManagerService.java"


# static fields
.field public static final DEL_PKG:Ljava/lang/String; = "pkg"

.field public static final EVENT_REMOVE_PACKAGE_LOCATION:I = 0xbb9

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"


# instance fields
.field protected mComboNlpPackageName:Ljava/lang/String;

.field protected mComboNlpReadyMarker:Ljava/lang/String;

.field protected mComboNlpScreenMarker:Ljava/lang/String;

.field protected mGeoFencerEnabled:Z

.field protected mGeoFencerPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addQcmGeoFencer(Landroid/location/Geofence;Landroid/location/LocationRequest;ILandroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 1
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "sanitizedRequest"    # Landroid/location/LocationRequest;
    .param p3, "uid"    # I
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public checkGeoFencerEnabled(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 88
    return-void
.end method

.method protected dumpGeoFencer(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 124
    return-void
.end method

.method protected dumpGpsFreezeProxy(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 141
    return-void
.end method

.method protected enableLocalLocationProviders(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p1, "gpsProvider"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 36
    return-void
.end method

.method public hwLocationPowerTrackerDump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 70
    return-void
.end method

.method public hwLocationPowerTrackerRecordRequest(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isIntent"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public hwLocationPowerTrackerRemoveRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public hwQuickGpsSwitch()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public hwSendLocationChangedAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public initHwLocationPowerTracker(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    return-void
.end method

.method protected isFreeze(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method protected isGPSDisabled()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public proxyGps(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "proxy"    # Z

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public removeQcmGeoFencer(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 110
    return-object p1
.end method

.method protected setGeoFencerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 117
    return-void
.end method

.method protected updateLocalLocationDB(Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

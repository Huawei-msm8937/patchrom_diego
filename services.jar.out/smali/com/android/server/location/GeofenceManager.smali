.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MIN_INTERVAL_MS:J = 0xea60L

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blacklist"    # Lcom/android/server/location/LocationBlacklist;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    .line 111
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 112
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 113
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 114
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 115
    new-instance v1, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    .line 116
    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 119
    invoke-static {}, Lcom/android/server/location/GpsFreezeProc;->getInstance()Lcom/android/server/location/GpsFreezeProc;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/GeofenceManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/GeofenceManager$1;-><init>(Lcom/android/server/location/GeofenceManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/GpsFreezeProc;->registerFreezeListener(Lcom/android/server/location/GpsFreezeListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeofenceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceManager;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/location/GeofenceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GeofenceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceManager;)Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GeofenceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GeofenceManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-boolean v4, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 227
    .local v0, "location":Landroid/location/Location;
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 232
    :cond_0
    if-nez v0, :cond_3

    move-object v0, v1

    .line 243
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    .line 226
    goto :goto_0

    .line 237
    .restart local v0    # "location":Landroid/location/Location;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 238
    .local v2, "now":J
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v6, 0x45d964b800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move-object v0, v1

    .line 239
    goto :goto_1
.end method

.method private removeExpiredFencesLocked()V
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 201
    .local v2, "time":J
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 204
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    iget-wide v4, v1, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 208
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_1
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_0

    .line 212
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 213
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    .line 215
    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p0, v8, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entering"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method private updateFences()V
    .locals 30

    .prologue
    .line 254
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v4, "enterIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 257
    .local v6, "exitIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 258
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v11

    .line 269
    .local v11, "location":Landroid/location/Location;
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 270
    .local v14, "minFenceDistance":D
    const/16 v16, 0x0

    .line 271
    .local v16, "needUpdates":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/location/GeofenceState;

    .line 272
    .local v19, "state":Lcom/android/server/location/GeofenceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 281
    invoke-static {}, Lcom/android/server/location/GpsFreezeProc;->getInstance()Lcom/android/server/location/GpsFreezeProc;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsFreezeProc;->isFreeze(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 286
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v17

    .line 287
    .local v17, "op":I
    if-ltz v17, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/location/GeofenceState;->mUid:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v20

    if-nez v20, :cond_0

    .line 298
    :cond_1
    const/16 v16, 0x1

    .line 299
    if-eqz v11, :cond_0

    .line 300
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v5

    .line 301
    .local v5, "event":I
    and-int/lit8 v20, v5, 0x1

    if-eqz v20, :cond_2

    .line 302
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    and-int/lit8 v20, v5, 0x2

    if-eqz v20, :cond_3

    .line 305
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v8

    .line 311
    .local v8, "fenceDistance":D
    cmpg-double v20, v8, v14

    if-gez v20, :cond_0

    .line 312
    move-wide v14, v8

    goto/16 :goto_0

    .line 318
    .end local v5    # "event":I
    .end local v8    # "fenceDistance":D
    .end local v17    # "op":I
    .end local v19    # "state":Lcom/android/server/location/GeofenceState;
    :cond_4
    if-eqz v16, :cond_8

    .line 322
    if-eqz v11, :cond_7

    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v0, v22

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v20

    if-eqz v20, :cond_7

    .line 323
    const-wide v22, 0x415b774000000000L    # 7200000.0

    const-wide v24, 0x40ed4c0000000000L    # 60000.0

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v26, v26, v14

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-long v12, v0

    .line 328
    .local v12, "intervalMs":J
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    move-wide/from16 v22, v0

    cmp-long v20, v22, v12

    if-eqz v20, :cond_6

    .line 329
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 330
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 331
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 333
    new-instance v18, Landroid/location/LocationRequest;

    invoke-direct/range {v18 .. v18}, Landroid/location/LocationRequest;-><init>()V

    .line 334
    .local v18, "request":Landroid/location/LocationRequest;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 355
    .end local v12    # "intervalMs":J
    .end local v18    # "request":Landroid/location/LocationRequest;
    :cond_6
    :goto_2
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 359
    .local v10, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 326
    .end local v10    # "intent":Landroid/app/PendingIntent;
    :cond_7
    const-wide/32 v12, 0xea60

    .restart local v12    # "intervalMs":J
    goto :goto_1

    .line 339
    .end local v12    # "intervalMs":J
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 340
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 341
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 342
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    .line 355
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "location":Landroid/location/Location;
    .end local v14    # "minFenceDistance":D
    .end local v16    # "needUpdates":Z
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 361
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "location":Landroid/location/Location;
    .restart local v14    # "minFenceDistance":D
    .restart local v16    # "needUpdates":Z
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 362
    .restart local v10    # "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 364
    .end local v10    # "intent":Landroid/app/PendingIntent;
    :cond_a
    return-void
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    .locals 10
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "allowedResolutionLevel"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Lcom/android/server/location/GeofenceState;

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v2

    move-object v1, p2

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 141
    .local v0, "state":Lcom/android/server/location/GeofenceState;
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/GeofenceState;

    .line 145
    .local v9, "w":Lcom/android/server/location/GeofenceState;
    iget-object v1, v9, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p2, v1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    .end local v9    # "w":Lcom/android/server/location/GeofenceState;
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 153
    monitor-exit v2

    .line 154
    return-void

    .line 143
    .restart local v9    # "w":Lcom/android/server/location/GeofenceState;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 153
    .end local v8    # "i":I
    .end local v9    # "w":Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 433
    const-string v2, "  Geofences:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 436
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 437
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 438
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 439
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 440
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 442
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    .line 413
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    .line 415
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 424
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 421
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 430
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 418
    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 165
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    if-nez p1, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 179
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 172
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .restart local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v2}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 178
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 179
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    return-void
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 191
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 196
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 195
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 196
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    return-void
.end method

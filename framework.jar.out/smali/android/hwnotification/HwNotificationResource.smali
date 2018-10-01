.class public Landroid/hwnotification/HwNotificationResource;
.super Ljava/lang/Object;
.source "HwNotificationResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    }
.end annotation


# static fields
.field public static final BACKGROUND_INDEX_0:I = 0x0

.field public static final BACKGROUND_INDEX_1:I = 0x1

.field public static final BACKGROUND_INDEX_2:I = 0x2

.field public static final BACKGROUND_INDEX_3:I = 0x3

.field public static final BACKGROUND_INDEX_4:I = 0x4

.field public static final BACKGROUND_INDEX_5:I = 0x5

.field public static final BACKGROUND_INDEX_6:I = 0x6

.field public static final BACKGROUND_INDEX_7:I = 0x7

.field public static final HW_NOTIFICATION_BACKGROUND_INDEX:Ljava/lang/String; = "huawei.notification.backgroundIndex"

.field public static final HW_NOTIFICATION_CONTENT_ICON:Ljava/lang/String; = "huawei.notification.contentIcon"

.field public static final HW_NOTIFICATION_REPLACE_ICONID:Ljava/lang/String; = "huawei.notification.replace.iconId"

.field public static final HW_NOTIFICATION_REPLACE_LOCATION:Ljava/lang/String; = "huawei.notification.replace.location"

.field public static final REPLACE_LOCATION_BIGCONTENT:I = 0x4

.field public static final REPLACE_LOCATION_CONTENT:I = 0x2

.field public static final REPLACE_LOCATION_HEADSUP:I = 0x8

.field public static final REPLACE_LOCATION_LARGEICON:I = 0x1

.field private static sInstance:Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Landroid/hwnotification/HwNotificationResource;->sInstance:Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static declared-synchronized getImplObject()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    .locals 3

    .prologue
    .line 39
    const-class v2, Landroid/hwnotification/HwNotificationResource;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/hwnotification/HwNotificationResource;->sInstance:Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Landroid/hwnotification/HwNotificationResource;->sInstance:Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v0, "instance":Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 42
    .end local v0    # "instance":Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :cond_0
    const/4 v0, 0x0

    .line 43
    .restart local v0    # "instance":Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :try_start_1
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwNotificationResource()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    move-result-object v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    new-instance v0, Landroid/hwnotification/HwNotificationResourceDummy;

    .end local v0    # "instance":Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    invoke-direct {v0}, Landroid/hwnotification/HwNotificationResourceDummy;-><init>()V

    .line 47
    .restart local v0    # "instance":Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :cond_1
    sput-object v0, Landroid/hwnotification/HwNotificationResource;->sInstance:Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    .line 48
    sget-object v1, Landroid/hwnotification/HwNotificationResource;->sInstance:Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "instance":Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getNotificationThemeData(IIII)Landroid/os/Bundle;
    .locals 6
    .param p0, "contIconId"    # I
    .param p1, "repIconId"    # I
    .param p2, "bgIndex"    # I
    .param p3, "repLocation"    # I

    .prologue
    .line 52
    invoke-static {}, Landroid/hwnotification/HwNotificationResource;->getImplObject()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;->getNotificationThemeData(Landroid/os/Bundle;IIII)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationThemeData(Landroid/os/Bundle;IIII)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "contIconId"    # I
    .param p2, "repIconId"    # I
    .param p3, "bgIndex"    # I
    .param p4, "repLocation"    # I

    .prologue
    .line 56
    invoke-static {}, Landroid/hwnotification/HwNotificationResource;->getImplObject()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;->getNotificationThemeData(Landroid/os/Bundle;IIII)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

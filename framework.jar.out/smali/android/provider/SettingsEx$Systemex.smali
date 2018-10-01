.class public final Landroid/provider/SettingsEx$Systemex;
.super Ljava/lang/Object;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Systemex"
.end annotation


# static fields
.field public static final ASSISTED_GPS_CONFIGURABLE_LIST:Ljava/lang/String; = "assisted_gps_configurable_list"

.field public static final ASSISTED_GPS_MODE:Ljava/lang/String; = "assisted_gps_mode"

.field public static final ASSISTED_GPS_NETWORK:Ljava/lang/String; = "assisted_gps_network"

.field public static final ASSISTED_GPS_POSITION_MODE:Ljava/lang/String; = "assisted_gps_position_mode"

.field public static final ASSISTED_GPS_RESET_TYPE:Ljava/lang/String; = "assisted_gps_reset_type"

.field public static final ASSISTED_GPS_ROAMING_ENABLED:Ljava/lang/String; = "assisted_gps_roaming_enabled"

.field public static final ASSISTED_GPS_SERVICE_IP:Ljava/lang/String; = "assisted_gps_service_IP"

.field public static final ASSISTED_GPS_SERVICE_PORT:Ljava/lang/String; = "assisted_gps_service_port"

.field public static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field public static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field public static final ATTWIFI_HOTSPOT:Ljava/lang/String; = "attwifi_hotspot"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GPS_START_MODE:Ljava/lang/String; = "gps_start_mode"

.field public static final NAVIGATIONBAR_IS_MIN:Ljava/lang/String; = "navigationbar_is_min"

.field public static final NAVIGATIONBAR_IS_MIN_DEFAULT:I = 0x0

.field public static final SHOW_BROADCAST_SSID_CONFIG:Ljava/lang/String; = "show_broadcast_ssid_config"

.field public static final USER_SET_AIRPLANE:Ljava/lang/String; = "user_set_airplane"

.field public static final VSIM_EANBLED_SUBID:Ljava/lang/String; = "vsim_enabled_subid"

.field public static final VSIM_SAVED_COMMRIL_MODE:Ljava/lang/String; = "vsim_saved_commril_mode"

.field public static final VSIM_SAVED_MAINSLOT:Ljava/lang/String; = "vsim_saved_mainslot"

.field public static final VSIM_SAVED_NETWORK_MODE:Ljava/lang/String; = "vsim_saved_network_mode"

.field public static final VSIM_ULONLY_MODE:Ljava/lang/String; = "vsim_ulonly_mode"

.field public static final VSIM_USER_RESERVED_SUBID:Ljava/lang/String; = "vsim_user_reserved_subid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 475
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwSettingsManager;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 429
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/common/HwSettingsManager;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwSettingsManager;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 314
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/common/HwSettingsManager;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwSettingsManager;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 372
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/common/HwSettingsManager;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/common/HwSettingsManager;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 469
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 411
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSettingsManager()Landroid/common/HwSettingsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/common/HwSettingsManager;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

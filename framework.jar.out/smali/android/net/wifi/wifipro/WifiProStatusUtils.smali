.class public Landroid/net/wifi/wifipro/WifiProStatusUtils;
.super Ljava/lang/Object;
.source "WifiProStatusUtils.java"


# static fields
.field public static final KEY_WIFI_PRO_PROPERTY:Ljava/lang/String; = "ro.config.hw_wifipro_enable"

.field public static final KEY_WIFI_PRO_SWITCH:Ljava/lang/String; = "smart_network_switching"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWifiProEnabledViaProperties()Z
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "ro.config.hw_wifipro_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWifiProEnabledViaXml(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_network_switching"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

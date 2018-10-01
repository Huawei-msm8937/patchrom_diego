.class public Lhuawei/android/debug/HwDBGSwitchController;
.super Ljava/lang/Object;
.source "HwDBGSwitchController.java"


# static fields
.field private static final DBG:Z = false

.field public static final GPS_DBG:Z = true

.field public static final WIFI_DBG:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDBGSwitch()Z
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

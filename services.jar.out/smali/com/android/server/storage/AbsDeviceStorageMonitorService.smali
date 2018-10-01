.class public abstract Lcom/android/server/storage/AbsDeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "AbsDeviceStorageMonitorService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getCust()Lhuawei/android/storage/HwCustDeviceStorageMonitorService;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

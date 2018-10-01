.class public Landroid/hwnotification/HwNotificationResourceDummy;
.super Ljava/lang/Object;
.source "HwNotificationResourceDummy.java"

# interfaces
.implements Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationThemeData(Landroid/os/Bundle;IIII)Landroid/os/Bundle;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "contIconId"    # I
    .param p3, "repIconId"    # I
    .param p4, "bgIndex"    # I
    .param p5, "repLocation"    # I

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

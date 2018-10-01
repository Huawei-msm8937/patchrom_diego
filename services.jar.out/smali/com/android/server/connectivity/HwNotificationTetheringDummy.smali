.class public Lcom/android/server/connectivity/HwNotificationTetheringDummy;
.super Ljava/lang/Object;
.source "HwNotificationTetheringDummy.java"

# interfaces
.implements Lcom/android/server/connectivity/HwNotificationTethering;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTetheredNotification()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public sendTetherNotification()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public sendTetherNotification(Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "tetheredNotification"    # Landroid/app/Notification;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public setTetheringNumber(ZZZ)V
    .locals 0
    .param p1, "wifiTethered"    # Z
    .param p2, "usbTethered"    # Z
    .param p3, "bluetoothTethered"    # Z

    .prologue
    .line 11
    return-void
.end method

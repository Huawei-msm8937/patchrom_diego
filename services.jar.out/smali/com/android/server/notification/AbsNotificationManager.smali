.class public abstract Lcom/android/server/notification/AbsNotificationManager;
.super Lcom/android/server/SystemService;
.source "AbsNotificationManager.java"


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
.method protected detectNotifyBySM(ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "n"    # Landroid/app/Notification;

    .prologue
    .line 20
    return-void
.end method

.method protected getNCTargetAppPkg(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)Ljava/lang/String;
    .locals 0
    .param p1, "opPkg"    # Ljava/lang/String;
    .param p2, "defaultPkg"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 75
    return-object p2
.end method

.method protected getNCTargetAppUid(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)I
    .locals 0
    .param p1, "opPkg"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "defaultUid"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    .line 70
    return p3
.end method

.method protected handleGetNotifications(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 49
    return-void
.end method

.method protected handleUserSwitchEvents(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 55
    return-void
.end method

.method protected hwCancelNotification(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 33
    return-void
.end method

.method protected hwEnqueueNotificationWithTag(Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "nr"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 17
    return-void
.end method

.method protected inNonDisturbMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected isAFWUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected isImportantNotification(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected isMmsNotificationEnable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected modifyScoreBySM(Ljava/lang/String;II)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "origScore"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected stopPlaySound()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected updateLight(ZII)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "ledOnMS"    # I
    .param p3, "ledOffMS"    # I

    .prologue
    .line 52
    return-void
.end method

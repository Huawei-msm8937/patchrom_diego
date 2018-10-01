.class public Lcom/android/internal/telephony/imsphone/HwCustImsPhone;
.super Ljava/lang/Object;
.source "HwCustImsPhone.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public registerContentObservers()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public removeNotification(Z)V
    .locals 0
    .param p1, "isImsRegistered"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public setOperatorErrorCodes(Lcom/android/ims/ImsReasonInfo;Landroid/content/BroadcastReceiver;)Z
    .locals 1
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public showCustVoWiFiNotification()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterContentObservers()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

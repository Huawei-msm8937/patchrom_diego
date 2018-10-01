.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 490
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 491
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 492
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x4200b

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRoamingDataStatusChangBroadcast()V

    .line 520
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    .line 496
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 497
    const-string v0, "data_roaming"

    .line 504
    .local v0, "contentUri":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 505
    return-void

    .line 500
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "data_roaming"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataRoamingSettingItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentUri":Ljava/lang/String;
    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 509
    return-void
.end method

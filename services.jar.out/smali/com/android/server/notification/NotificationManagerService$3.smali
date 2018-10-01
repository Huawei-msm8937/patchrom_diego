.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, -0x2710

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x190

    const/4 v4, 0x0

    .line 864
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 866
    .local v10, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService;->access$1002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 872
    const-string v0, "mIntentReceiver-ACTION_SCREEN_ON"

    invoke-static {v5, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 880
    const-string v0, "mIntentReceiver-ACTION_SCREEN_OFF"

    invoke-static {v5, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 884
    :cond_2
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1202(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 889
    const-string v0, "mIntentReceiver-ACTION_PHONE_STATE_CHANGED"

    invoke-static {v5, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 893
    :cond_3
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 896
    const-string v0, "mIntentReceiver-ACTION_USER_STOPPED"

    invoke-static {v5, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 899
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 900
    .local v7, "userHandle":I
    if-ltz v7, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$500()I

    move-result v1

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v2

    const/4 v8, 0x6

    move v5, v4

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto :goto_0

    .line 904
    .end local v7    # "userHandle":I
    :cond_4
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 907
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 909
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 910
    const/16 v0, 0x44c

    const-string v1, "turn off notificationLight due to Receiver-ACTION_USER_PRESENT"

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v4, v4, v4}, Lcom/android/server/notification/NotificationManagerService;->updateLight(ZII)V

    goto/16 :goto_0

    .line 915
    :cond_5
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 916
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 920
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 921
    const/16 v0, 0x44c

    const-string v1, "turn off notificationLight due to Receiver-ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v4, v4, v4}, Lcom/android/server/notification/NotificationManagerService;->updateLight(ZII)V

    goto/16 :goto_0

    .line 925
    :cond_6
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 926
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 930
    .local v11, "user":I
    const-string v0, "mIntentReceiver-ACTION_USER_SWITCHED"

    invoke-static {v5, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 934
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 936
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 937
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched(I)V

    .line 938
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    .line 939
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService;->handleUserSwitchEvents(I)V

    .line 941
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->stopPlaySound()V

    goto/16 :goto_0

    .line 943
    .end local v11    # "user":I
    :cond_7
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 946
    const-string v0, "mIntentReceiver-ACTION_USER_ADDED"

    invoke-static {v5, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 950
    :cond_8
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 951
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 952
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    goto/16 :goto_0

    .line 953
    .end local v11    # "user":I
    :cond_9
    const-string v0, "huawei.intent.action.HWSYSTEMMANAGER_CHANGE_POWERMODE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 954
    const-string v0, "power_mode"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPowerSaverObserver:Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    move-result-object v0

    if-nez v0, :cond_a

    .line 956
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mPowerSaverObserver:Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1702(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;)Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    .line 958
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPowerSaverObserver:Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->observe()V

    .line 959
    const-string v0, "NotificationService"

    const-string v1, "super power save 2.0 recevier brodcast register sqlite listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 961
    :cond_b
    const-string v0, "huawei.intent.action.HWSYSTEMMANAGER_SHUTDOWN_LIMIT_POWERMODE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "shutdomn_limit_powermode"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPowerSaverObserver:Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPowerSaverObserver:Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->unObserve()V

    .line 965
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mPowerSaverObserver:Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
    invoke-static {v0, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1702(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;)Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;

    .line 966
    const-string v0, "NotificationService"

    const-string v1, "super power save 2.0 recevier brodcast unregister sqlite listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

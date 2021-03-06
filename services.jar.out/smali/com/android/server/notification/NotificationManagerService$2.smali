.class Lcom/android/server/notification/NotificationManagerService$2;
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
    .line 770
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 774
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const/16 v24, 0x0

    .line 779
    .local v24, "queryRestart":Z
    const/16 v22, 0x0

    .line 780
    .local v22, "queryRemove":Z
    const/16 v19, 0x0

    .line 781
    .local v19, "packageChanged":Z
    const/4 v14, 0x1

    .line 783
    .local v14, "cancelNotifications":Z
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    :cond_2
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 793
    .local v9, "changeUserId":I
    const/16 v2, 0x190

    const-string v3, "mIntentReceiver-Package changed"

    invoke-static {v2, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 796
    const/16 v20, 0x0

    .line 797
    .local v20, "pkgList":[Ljava/lang/String;
    if-eqz v22, :cond_4

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v23, 0x1

    .line 800
    .local v23, "queryReplace":Z
    :goto_1
    const/16 v2, 0x190

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " queryReplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 802
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 803
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 846
    :goto_2
    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_d

    .line 847
    move-object/from16 v13, v20

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    aget-object v5, v13, v17

    .line 848
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$500()I

    move-result v3

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v24, :cond_c

    const/4 v8, 0x1

    :goto_4
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 847
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 797
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v23    # "queryReplace":Z
    :cond_4
    const/16 v23, 0x0

    goto :goto_1

    .line 804
    .restart local v23    # "queryReplace":Z
    :cond_5
    if-eqz v24, :cond_6

    .line 805
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 807
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 808
    .local v26, "uri":Landroid/net/Uri;
    if-eqz v26, :cond_0

    .line 811
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 812
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 816
    if-nez v22, :cond_7

    if-eqz v19, :cond_8

    .line 817
    :cond_7
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 818
    .local v25, "uid":I
    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationResource:Landroid/rms/HwSysResource;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Landroid/rms/HwSysResource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationResource:Landroid/rms/HwSysResource;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Landroid/rms/HwSysResource;

    move-result-object v2

    const/4 v3, -0x1

    move/from16 v0, v25

    invoke-interface {v2, v0, v5, v3}, Landroid/rms/HwSysResource;->clear(ILjava/lang/String;I)V

    .line 822
    .end local v25    # "uid":I
    :cond_8
    if-eqz v19, :cond_a

    .line 825
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v21

    .line 826
    .local v21, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v9, v2, :cond_b

    move v2, v9

    :goto_5
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 829
    .local v16, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    if-nez v16, :cond_a

    .line 831
    :cond_9
    const/4 v14, 0x0

    .line 843
    .end local v16    # "enabled":I
    .end local v21    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    :goto_6
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v20    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v20, v2

    .restart local v20    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 826
    .restart local v21    # "pm":Landroid/content/pm/IPackageManager;
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 833
    .end local v21    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    .line 837
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    const/16 v2, 0x190

    const-string v3, "Exception trying to look up app enabled setting"

    invoke-static {v2, v3, v15}, Landroid/util/Flog;->i(ILjava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 849
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v26    # "uri":Landroid/net/Uri;
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 854
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    move/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v26    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    goto :goto_6
.end method

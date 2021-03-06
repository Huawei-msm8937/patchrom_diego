.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2852
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2853
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2854
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2855
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2856
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2857
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2859
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2860
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2861
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2862
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2864
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2868
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v13, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2869
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2870
    .local v1, "action":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2871
    .local v9, "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2872
    const-string v13, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2873
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .line 2874
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13, v7}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2875
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2876
    monitor-exit v14

    .line 2925
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2873
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2879
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v14

    goto :goto_1

    .line 2924
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 2880
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v9    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2881
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2906
    :cond_3
    :goto_2
    if-eqz v9, :cond_a

    array-length v13, v9

    if-lez v13, :cond_a

    .line 2907
    move-object v2, v9

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_a

    aget-object v8, v2, v5

    .line 2908
    .local v8, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13, v8}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_9

    .line 2911
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 2913
    .local v11, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-eqz v11, :cond_4

    .line 2914
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 2915
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_4

    .line 2916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2910
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 2882
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v11    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_5
    const-string v13, "android.intent.action.USER_STOPPED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2883
    const-string v13, "android.intent.extra.user_handle"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2884
    .local v12, "userHandle":I
    if-ltz v12, :cond_3

    .line 2885
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13, v12}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 2887
    .end local v12    # "userHandle":I
    :cond_6
    const-string v13, "android.intent.action.UID_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2888
    const-string v13, "android.intent.extra.UID"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2889
    .local v10, "uid":I
    if-ltz v10, :cond_3

    .line 2890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseLongArray;->delete(I)V

    goto/16 :goto_2

    .line 2893
    .end local v10    # "uid":I
    :cond_7
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2896
    monitor-exit v14

    goto/16 :goto_1

    .line 2898
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2899
    .local v3, "data":Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 2900
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 2901
    .restart local v8    # "pkg":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2902
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    .end local v9    # "pkgList":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v8, v9, v13

    .restart local v9    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 2907
    .end local v3    # "data":Landroid/net/Uri;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 2924
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_a
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

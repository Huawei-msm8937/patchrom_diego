.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 556
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 648
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 649
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 586
    new-instance v8, Landroid/net/NetworkStats;

    sub-long v0, p4, p2

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 587
    .local v8, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 589
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    return-object v8

    .line 591
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 625
    if-nez p4, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 637
    if-nez p4, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_0
.end method

.method public getRelevantUids()[I
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids()[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 613
    .local v6, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v7

    .line 616
    .local v7, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v6, v7}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 618
    .end local v7    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    return-object v6
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
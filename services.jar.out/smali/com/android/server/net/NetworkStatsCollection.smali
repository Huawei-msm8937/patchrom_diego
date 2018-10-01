.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final TAG:Ljava/lang/String; = "NetworkStatsCollection"

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 97
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 98
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 99
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 583
    .local v9, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_3

    .line 584
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 585
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 587
    .local v3, "value":Landroid/net/NetworkStatsHistory;
    iget-object v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 583
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 588
    :cond_1
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_0

    .line 590
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v6, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v7, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 591
    .local v8, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 592
    .local v2, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_2

    .line 593
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 594
    .restart local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v9, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 596
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_1

    .line 599
    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v8    # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_5

    .line 600
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 601
    .restart local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 603
    .restart local v3    # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 599
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 605
    :cond_4
    const-string v4, "c,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 607
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 608
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 609
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 612
    invoke-virtual {v3, p1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    goto :goto_3

    .line 614
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_5
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 297
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)Landroid/net/NetworkStatsHistory;
    .locals 8
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "proc"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)V

    .line 303
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 306
    .local v6, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v7, 0x0

    .line 307
    .local v7, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_1

    .line 308
    new-instance v7, Landroid/net/NetworkStatsHistory;

    .end local v7    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v1, 0xa

    invoke-direct {v7, v2, v3, v1}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 313
    .restart local v7    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v7    # "updated":Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v7

    .line 309
    .restart local v7    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 310
    new-instance v7, Landroid/net/NetworkStatsHistory;

    .end local v7    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v7, v6, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .restart local v7    # "updated":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 317
    goto :goto_1
.end method

.method private static isAccessibleToUser(II)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I

    .prologue
    const/16 v1, 0x3e8

    .line 617
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, -0x4

    if-eq p0, v0, :cond_0

    const/4 v0, -0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 3
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .prologue
    .line 535
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 536
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 537
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 539
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 274
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 275
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 276
    new-instance v0, Landroid/net/NetworkStatsHistory;

    .end local v0    # "target":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 277
    .restart local v0    # "target":Landroid/net/NetworkStatsHistory;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;

    .prologue
    .line 627
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 628
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    const/4 v2, 0x1

    .line 632
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 139
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 547
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 548
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 549
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 551
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 552
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string v4, "ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 553
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 554
    const-string v4, " set="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 555
    const-string v4, " tag="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string v4, " proc="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->proc:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 561
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 562
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 563
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 565
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 568
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "wifi"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "eth"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "bt"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 118
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 121
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 169
    const-string v7, ""

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIILjava/lang/String;JJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 178
    const-string v7, ""

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIILjava/lang/String;JJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIILjava/lang/String;JJ)Landroid/net/NetworkStatsHistory;
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "proc"    # Ljava/lang/String;
    .param p7, "start"    # J
    .param p9, "end"    # J

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 188
    .local v6, "callerUid":I
    invoke-static {p2, v6}, Lcom/android/server/net/NetworkStatsCollection;->isAccessibleToUser(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "NetworkStatsCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network stats history of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is forbidden for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network stats history of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is forbidden for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v2, p7, p9

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, v4, v5, v2, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 199
    .local v0, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v2, p7, p9

    if-nez v2, :cond_3

    .line 210
    :cond_1
    return-object v0

    .line 195
    .end local v0    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->estimateBuckets()I

    move-result v2

    goto :goto_0

    .line 201
    .restart local v0    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 203
    .local v8, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v2, p2, :cond_4

    iget v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {p3, v2}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v2, p4, :cond_4

    iget-object v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->proc:Ljava/lang/String;

    invoke-static {v2, p6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 201
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public getRelevantUids()[I
    .locals 6

    .prologue
    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 147
    .local v0, "callerUid":I
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 148
    .local v4, "uids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 150
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v5, v0}, Lcom/android/server/net/NetworkStatsCollection;->isAccessibleToUser(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v2

    .line 153
    .local v2, "j":I
    if-gez v2, :cond_0

    .line 154
    xor-int/lit8 v2, v2, -0x1

    .line 155
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/util/IntArray;->add(II)V

    .line 148
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    return-object v5
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 221
    .local v6, "now":J
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v12, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 223
    .local v12, "stats":Landroid/net/NetworkStats;
    cmp-long v2, p2, p4

    if-nez v2, :cond_1

    .line 252
    :cond_0
    return-object v12

    .line 225
    :cond_1
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 226
    .local v9, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 228
    .local v8, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 229
    .local v0, "callerUid":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 231
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsCollection;->isAccessibleToUser(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_2

    .line 233
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 234
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 236
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 237
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 238
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 239
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 240
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 241
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 242
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 243
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 244
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->operations:J

    .line 246
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 229
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 17
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 329
    .local v11, "magic":I
    const v14, 0x414e4554

    if-eq v11, v14, :cond_0

    .line 330
    new-instance v14, Ljava/net/ProtocolException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unexpected magic: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 333
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 334
    .local v13, "version":I
    packed-switch v13, :pswitch_data_0

    .line 359
    new-instance v14, Ljava/net/ProtocolException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unexpected version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 337
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 338
    .local v9, "identSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_3

    .line 339
    new-instance v2, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 341
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 342
    .local v12, "size":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 343
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 344
    .local v3, "uid":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 345
    .local v4, "set":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 346
    .local v5, "tag":I
    const-string v6, ""

    .line 347
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    if-eqz v14, :cond_1

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 351
    :cond_1
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)V

    .line 352
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 353
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 342
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 338
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3    # "uid":I
    .end local v4    # "set":I
    .end local v5    # "tag":I
    .end local v6    # "proc":Ljava/lang/String;
    .end local v7    # "history":Landroid/net/NetworkStatsHistory;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v10    # "j":I
    .end local v12    # "size":I
    :cond_3
    return-void

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    .line 324
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 409
    .local v5, "inputFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 411
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 415
    .local v7, "magic":I
    const v10, 0x414e4554

    if-eq v7, v10, :cond_0

    .line 416
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected magic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v7    # "magic":I
    :catch_0
    move-exception v10

    move-object v3, v4

    .line 440
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 442
    :goto_1
    return-void

    .line 419
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 420
    .local v9, "version":I
    packed-switch v9, :pswitch_data_0

    .line 434
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    .end local v7    # "magic":I
    .end local v9    # "version":I
    :catchall_0
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 423
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "magic":I
    .restart local v9    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 424
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v8, :cond_1

    .line 425
    new-instance v2, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v2, v4}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 426
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v4}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 428
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v6, v2, v10, v11, v12}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 429
    .local v6, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v6, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 440
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 441
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 440
    .end local v1    # "i":I
    .end local v7    # "magic":I
    .end local v8    # "size":I
    .end local v9    # "version":I
    :catchall_1
    move-exception v10

    goto :goto_2

    .line 437
    :catch_1
    move-exception v10

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    new-instance v8, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 448
    .local v8, "inputFile":Landroid/util/AtomicFile;
    const/4 v6, 0x0

    .line 450
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 454
    .local v11, "magic":I
    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 455
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .end local v11    # "magic":I
    :catch_0
    move-exception v17

    move-object v6, v7

    .line 505
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 507
    :goto_1
    return-void

    .line 458
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 459
    .local v16, "version":I
    packed-switch v16, :pswitch_data_0

    .line 499
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    .end local v11    # "magic":I
    .end local v16    # "version":I
    :catchall_0
    move-exception v17

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    .line 477
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "magic":I
    .restart local v16    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 478
    .local v5, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v5, :cond_5

    .line 479
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, v7}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 481
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 482
    .local v13, "size":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    if-ge v9, v13, :cond_4

    .line 483
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 484
    .local v15, "uid":I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 486
    .local v12, "set":I
    :goto_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 488
    .local v14, "tag":I
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v15, v12, v14}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 489
    .local v10, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v7}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 491
    .local v2, "history":Landroid/net/NetworkStatsHistory;
    if-nez v14, :cond_3

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    .line 492
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 484
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v12    # "set":I
    .end local v14    # "tag":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_5

    .line 491
    .restart local v2    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .restart local v12    # "set":I
    .restart local v14    # "tag":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_6

    .line 478
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v12    # "set":I
    .end local v14    # "tag":I
    .end local v15    # "uid":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 505
    .end local v3    # "i":I
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "identSize":I
    .end local v9    # "j":I
    .end local v13    # "size":I
    :cond_5
    :pswitch_1
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    .line 506
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 505
    .end local v11    # "magic":I
    .end local v16    # "version":I
    :catchall_1
    move-exception v17

    goto :goto_2

    .line 502
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 4
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection;

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 288
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 289
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 290
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 13
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 261
    move-object/from16 v0, p9

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "history":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    .line 263
    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 264
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v8

    move-object/from16 v0, p9

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v4

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 265
    return-void
.end method

.method public removeUids([I)V
    .locals 8
    .param p1, "uids"    # [I

    .prologue
    const/4 v7, 0x0

    .line 515
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 516
    .local v2, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 519
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 520
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v5, :cond_1

    .line 523
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 524
    .local v4, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 526
    .local v3, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 528
    .end local v3    # "removedHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "uidHistory":Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    goto :goto_0

    .line 532
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 103
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 104
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 107
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 367
    .local v6, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 368
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 369
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v5, :cond_0

    .line 370
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 371
    iget-object v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_1
    const v8, 0x414e4554

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 377
    const/16 v8, 0x10

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 379
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 380
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 381
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 382
    .restart local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 384
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 385
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 386
    .restart local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 387
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 388
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 389
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 390
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->proc:Ljava/lang/String;

    .line 391
    .local v7, "proc":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 392
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 393
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 397
    :goto_2
    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 395
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2

    .line 401
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    .end local v7    # "proc":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 402
    return-void
.end method

.class public Lcom/android/server/am/HwBroadcastQueue;
.super Lcom/android/server/am/BroadcastQueue;
.source "HwBroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
    }
.end annotation


# static fields
.field static final DEBUG_CONSUMPTION:Z = false

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field static final TAG:Ljava/lang/String; = "HwBroadcastQueue"

.field private static final TYPE_CONFIG_CLEAR:I = 0x0

.field private static final TYPE_CONFIG_DROP_BC_ACTION:I = 0x2

.field private static final TYPE_CONFIG_DROP_BC_BY_PID:I = 0x3

.field private static final TYPE_CONFIG_MAX_PROXY_BC:I = 0x4

.field private static final TYPE_CONFIG_PROXY_BC_ACTION:I = 0x1

.field private static final TYPE_CONFIG_SAME_KIND_ACTION:I = 0x5

.field private static mProxyFeature:Z

.field static final mtmBRManagerEnabled:Z


# instance fields
.field private MAX_PROXY_BROADCAST:I

.field private enableUploadRadar:Z

.field private final mActionExcludePkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppDropActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppProxyActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastRadarUtil:Lcom/android/server/am/HwBroadcastRadarUtil;

.field private mCopyOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHwMtmBroadcastResourceManager:Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;

.field final mOrderedPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mParallelPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessDropActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProxyActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProxyBroadcastPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProxyPkgsCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRadarBroadcastMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSameKindsActionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyFeature:Z

    .line 145
    const-string v0, "ro.config.multi_task_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/HwBroadcastQueue;->mtmBRManagerEnabled:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    .line 80
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/am/HwBroadcastQueue;->MAX_PROXY_BROADCAST:I

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    .line 119
    new-instance v1, Lcom/android/server/am/HwBroadcastQueue$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/HwBroadcastQueue$1;-><init>(Lcom/android/server/am/HwBroadcastQueue;)V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mSameKindsActionList:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyActions:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    .line 144
    iput-object v2, p0, Lcom/android/server/am/HwBroadcastQueue;->mHwMtmBroadcastResourceManager:Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;

    .line 1036
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/HwBroadcastQueue;->enableUploadRadar:Z

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionWhiteList:Ljava/util/ArrayList;

    .line 166
    const-string v1, "persist.sys.pg_close_action"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "closeSwitcher":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "proxy_bc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "HwBroadcastQueue"

    const-string v2, "close proxy bc "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/HwBroadcastQueue;->mProxyFeature:Z

    .line 173
    :cond_0
    sget-boolean v1, Lcom/android/server/am/HwBroadcastQueue;->mtmBRManagerEnabled:Z

    if-eqz v1, :cond_1

    .line 174
    invoke-static {p0}, Lcom/android/server/HwServiceFactory;->getMtmBRManager(Lcom/android/server/am/HwBroadcastQueue;)Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mHwMtmBroadcastResourceManager:Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;

    .line 179
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mCopyOrderedBroadcasts:Ljava/util/ArrayList;

    .line 180
    new-instance v1, Lcom/android/server/am/HwBroadcastRadarUtil;

    invoke-direct {v1}, Lcom/android/server/am/HwBroadcastRadarUtil;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mBroadcastRadarUtil:Lcom/android/server/am/HwBroadcastRadarUtil;

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mRadarBroadcastMap:Ljava/util/HashMap;

    .line 184
    invoke-direct {p0}, Lcom/android/server/am/HwBroadcastQueue;->initActionWhiteList()V

    .line 186
    return-void
.end method

.method private canTrim(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 15
    .param p1, "r1"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "r2"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 264
    :cond_0
    const/4 v13, 0x0

    .line 318
    :goto_0
    return v13

    .line 267
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 268
    .local v9, "o1":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 271
    .local v10, "o2":Ljava/lang/Object;
    invoke-direct {p0, v9}, Lcom/android/server/am/HwBroadcastQueue;->getPkg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "pkg1":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/server/am/HwBroadcastQueue;->getPkg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "pkg2":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 274
    const/4 v13, 0x0

    goto :goto_0

    .line 278
    :cond_2
    if-eq v9, v10, :cond_6

    .line 279
    instance-of v13, v9, Lcom/android/server/am/BroadcastFilter;

    if-eqz v13, :cond_3

    instance-of v13, v10, Lcom/android/server/am/BroadcastFilter;

    if-eqz v13, :cond_3

    move-object v5, v9

    .line 280
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .local v5, "filter1":Lcom/android/server/am/BroadcastFilter;
    move-object v6, v10

    .line 281
    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    .line 282
    .local v6, "filter2":Lcom/android/server/am/BroadcastFilter;
    iget-object v13, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v14, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eq v13, v14, :cond_6

    .line 284
    const/4 v13, 0x0

    goto :goto_0

    .line 286
    .end local v5    # "filter1":Lcom/android/server/am/BroadcastFilter;
    .end local v6    # "filter2":Lcom/android/server/am/BroadcastFilter;
    :cond_3
    instance-of v13, v9, Landroid/content/pm/ResolveInfo;

    if-eqz v13, :cond_5

    instance-of v13, v10, Landroid/content/pm/ResolveInfo;

    if-eqz v13, :cond_5

    move-object v7, v9

    .line 287
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "info1":Landroid/content/pm/ResolveInfo;
    move-object v8, v10

    .line 288
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 289
    .local v8, "info2":Landroid/content/pm/ResolveInfo;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-ne v13, v14, :cond_4

    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-ne v13, v14, :cond_4

    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eq v13, v14, :cond_6

    .line 294
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 297
    .end local v7    # "info1":Landroid/content/pm/ResolveInfo;
    .end local v8    # "info2":Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 303
    :cond_6
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "action1":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "action2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 307
    const/4 v13, 0x1

    goto :goto_0

    .line 311
    :cond_7
    iget-object v13, p0, Lcom/android/server/am/HwBroadcastQueue;->mSameKindsActionList:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "a1":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/am/HwBroadcastQueue;->mSameKindsActionList:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    .local v2, "a2":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 315
    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 318
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private clearConfigLocked()V
    .locals 2

    .prologue
    .line 701
    const-string v0, "HwBroadcastQueue"

    const-string v1, "clear all config"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 703
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 704
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 705
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 706
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 707
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mSameKindsActionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 708
    return-void
.end method

.method private configDropBCActionsLocked(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 629
    const-string v1, "HwBroadcastQueue"

    const-string v2, "config drop bc actions error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_0
    const-string v1, "HwBroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drop actions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-nez p2, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 638
    .local v0, "dropActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private configDropBCByPidLocked(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "pid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 647
    const-string v3, "HwBroadcastQueue"

    const-string v4, "config drop bc actions by pid error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return-void

    .line 652
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 653
    .local v2, "iPid":Ljava/lang/Integer;
    const-string v3, "HwBroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " drop actions:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-nez p2, :cond_1

    .line 655
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    .end local v2    # "iPid":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HwBroadcastQueue"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "iPid":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .local v0, "dropActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private configMaxProxyBCLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    const-string v1, "HwBroadcastQueue"

    const-string v2, "config max proxy broadcast error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 675
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/HwBroadcastQueue;->MAX_PROXY_BROADCAST:I

    .line 676
    const-string v1, "HwBroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set max proxy broadcast :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/HwBroadcastQueue;->MAX_PROXY_BROADCAST:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwBroadcastQueue"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configProxyBCActionsLocked(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 610
    const-string v0, "HwBroadcastQueue"

    const-string v1, "invaild parameter for config proxy bc actions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 614
    :cond_0
    if-nez p1, :cond_1

    .line 615
    invoke-virtual {p0, p2}, Lcom/android/server/am/HwBroadcastQueue;->setProxyBCActions(Ljava/util/List;)V

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/HwBroadcastQueue;->setAppProxyBCActions(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private configSameActionLocked(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "action1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 687
    :cond_0
    const-string v2, "HwBroadcastQueue"

    const-string v3, "invaild parameter for config same kind action"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1
    return-void

    .line 691
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 692
    .local v0, "action2":Ljava/lang/String;
    const-string v2, "HwBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config same action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v2, p0, Lcom/android/server/am/HwBroadcastQueue;->mSameKindsActionList:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private dropActionLocked(Ljava/lang/String;ILcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "br"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v3, 0x1

    .line 723
    iget-object v4, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "action":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/am/HwBroadcastQueue;->isAlivePid(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has died, drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return v3

    .line 732
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 733
    iget-object v4, p0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 734
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 735
    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cache, drop all proxy broadcast, now drop :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cache, drop list broadcast, now drop :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 745
    iget-object v4, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 746
    .local v2, "dropActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 747
    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cache, drop all proxy broadcast, now drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 749
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 750
    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cache, drop list broadcast, now drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 755
    .end local v2    # "dropActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private getPid(Ljava/lang/Object;)I
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 945
    const/4 v1, -0x1

    .line 946
    .local v1, "pid":I
    instance-of v2, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 947
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 948
    .local v0, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v2, :cond_0

    .line 949
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v2, Lcom/android/server/am/ReceiverList;->pid:I

    .line 950
    if-gtz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    .line 951
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 957
    .end local v0    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_0
    :goto_0
    return v1

    .line 954
    :cond_1
    instance-of v2, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getPkg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 928
    const/4 v2, 0x0

    .line 929
    .local v2, "pkg":Ljava/lang/String;
    instance-of v3, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 930
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 931
    .local v0, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 938
    .end local v0    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_0
    :goto_0
    return-object v2

    .line 932
    :cond_1
    instance-of v3, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 933
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 934
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 935
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getUid(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 964
    const/4 v2, -0x1

    .line 965
    .local v2, "uid":I
    instance-of v3, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 966
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 967
    .local v0, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v3, :cond_0

    .line 968
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v3, Lcom/android/server/am/ReceiverList;->uid:I

    .line 969
    if-gtz v2, :cond_0

    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    .line 970
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 979
    .end local v0    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_0
    :goto_0
    return v2

    .line 973
    :cond_1
    instance-of v3, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 974
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 975
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 976
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method private handleBroadcastQueueOverlength(Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p1, "copyOrderedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    const-string v8, ""

    .line 1109
    .local v8, "callerPkg":Ljava/lang/String;
    const-string v6, ""

    .line 1110
    .local v6, "broadcastAction":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1111
    .local v18, "isContainsMMS":Z
    const/4 v12, 0x0

    .line 1112
    .local v12, "curReceiverName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1113
    .local v13, "curReceiverPkgName":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 1114
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 1115
    .local v4, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 1113
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1119
    :cond_1
    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v24, v0

    if-lez v24, :cond_2

    .line 1120
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v24, v0

    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1121
    .local v11, "curReceiver":Ljava/lang/Object;
    instance-of v0, v11, Lcom/android/server/am/BroadcastFilter;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object v3, v11

    .line 1122
    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    .line 1123
    .local v3, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v13, v3, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 1132
    .end local v3    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v11    # "curReceiver":Ljava/lang/Object;
    :cond_2
    :goto_2
    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1133
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1135
    const-string v24, "com.android.mms"

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1138
    :cond_3
    const/16 v18, 0x1

    .line 1140
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mRadarBroadcastMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;

    .line 1141
    .local v7, "broadcastRadarRecord":Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
    if-nez v7, :cond_5

    .line 1142
    new-instance v7, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;

    .end local v7    # "broadcastRadarRecord":Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-direct {v7, v6, v8, v0}, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1144
    .restart local v7    # "broadcastRadarRecord":Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
    :cond_5
    iget v0, v7, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v7, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->count:I

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mRadarBroadcastMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1124
    .end local v7    # "broadcastRadarRecord":Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
    .restart local v11    # "curReceiver":Ljava/lang/Object;
    :cond_6
    instance-of v0, v11, Landroid/content/pm/ResolveInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v17, v11

    .line 1125
    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1126
    .local v17, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1127
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1128
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 1148
    .end local v4    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v11    # "curReceiver":Ljava/lang/Object;
    .end local v17    # "info":Landroid/content/pm/ResolveInfo;
    :cond_7
    const-string v21, ""

    .line 1149
    .local v21, "mostFrequentAction":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1150
    .local v20, "maxNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mRadarBroadcastMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1152
    .local v19, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;>;>;"
    :cond_8
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1153
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1154
    .local v9, "curActionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->count:I

    .line 1155
    .local v10, "curBroadcastNum":I
    move/from16 v0, v20

    if-le v10, v0, :cond_8

    .line 1156
    move/from16 v20, v10

    .line 1157
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "mostFrequentAction":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "mostFrequentAction":Ljava/lang/String;
    goto :goto_3

    .line 1161
    .end local v9    # "curActionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;>;"
    .end local v10    # "curBroadcastNum":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mRadarBroadcastMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;

    .line 1163
    .local v5, "brRecord":Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mActionWhiteList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    iget-object v0, v5, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->actionName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1164
    const/16 v24, 0x68

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The action["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->actionName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] should be ignored for order broadcast queue overlength."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1189
    :goto_4
    return-void

    .line 1167
    :cond_a
    const-string v23, "unknown"

    .line 1169
    .local v23, "versionName":Ljava/lang/String;
    if-eqz v13, :cond_b

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_b

    .line 1170
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    const/16 v25, 0x4000

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1172
    .local v22, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v22, :cond_b

    .line 1173
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .end local v22    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_b
    :goto_5
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1180
    .local v14, "data":Landroid/os/Bundle;
    const-string v24, "package"

    iget-object v0, v5, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v24, "action"

    iget-object v0, v5, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->actionName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v24, "actionCount"

    iget v0, v5, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->count:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1183
    const-string v24, "receiver"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v24, "versionName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v24, "mmsFlag"

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mBroadcastRadarUtil:Lcom/android/server/am/HwBroadcastRadarUtil;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/server/am/HwBroadcastRadarUtil;->handleBroadcastQueueOverlength(Landroid/os/Bundle;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mRadarBroadcastMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    goto :goto_4

    .line 1176
    .end local v14    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v15

    .line 1177
    .local v15, "e":Ljava/lang/Exception;
    const-string v24, "HwBroadcastQueue"

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private handleReceiverTimeOutRadar()V
    .locals 24

    .prologue
    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_1

    .line 1193
    const-string v20, "HwBroadcastQueue"

    const-string v21, "handleReceiverTimeOutRadar, but mOrderedBroadcasts is empty"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/BroadcastRecord;

    .line 1200
    .local v14, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v20, v0

    if-gtz v20, :cond_3

    .line 1201
    :cond_2
    const-string v20, "HwBroadcastQueue"

    const-string v21, "handleReceiverTimeOutRadar Timeout on receiver, but receiver is invalid."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1206
    :cond_3
    const/4 v13, 0x0

    .line 1207
    .local v13, "pkg":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1208
    .local v15, "receiverName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1209
    .local v4, "actionName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1211
    .local v18, "uid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    iget-wide v0, v14, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-wide/from16 v22, v0

    sub-long v16, v20, v22

    .line 1212
    .local v16, "receiverTime":J
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1213
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1214
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v20

    const/high16 v21, 0x10000000

    and-int v20, v20, v21

    if-eqz v20, :cond_4

    const-wide/16 v10, 0x7d0

    .line 1217
    .local v10, "maybeTimeout":J
    :goto_1
    cmp-long v20, v16, v10

    if-gez v20, :cond_5

    .line 1218
    const-string v20, "HwBroadcastQueue"

    const-string v21, "current receiver should not report timeout."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    .end local v10    # "maybeTimeout":J
    :cond_4
    const-wide/16 v10, 0x1388

    goto :goto_1

    .line 1223
    :cond_5
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v20, v0

    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1225
    .local v6, "curReceiver":Ljava/lang/Object;
    const/16 v20, 0x68

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "receiver "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " took "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ms when receive "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1228
    instance-of v0, v6, Lcom/android/server/am/BroadcastFilter;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v5, v6

    .line 1229
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 1230
    .local v5, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v13, v5, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 1241
    .end local v5    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x1b7740

    cmp-long v20, v20, v22

    if-lez v20, :cond_0

    .line 1243
    const-string v19, ""

    .line 1245
    .local v19, "versionName":Ljava/lang/String;
    if-eqz v13, :cond_7

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1246
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    const/16 v21, 0x4000

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1248
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_7

    .line 1249
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :goto_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1256
    .local v7, "data":Landroid/os/Bundle;
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v20, "receiver"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v20, "action"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v20, "versionName"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v20, "receiveTime"

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v21, v21, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1261
    const-string v20, "intent"

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mBroadcastRadarUtil:Lcom/android/server/am/HwBroadcastRadarUtil;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/am/HwBroadcastRadarUtil;->handleReceiverTimeOut(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1231
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v19    # "versionName":Ljava/lang/String;
    :cond_8
    instance-of v0, v6, Landroid/content/pm/ResolveInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object v9, v6

    .line 1232
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1233
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1234
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1235
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1236
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1237
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 1252
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1253
    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "HwBroadcastQueue"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private initActionWhiteList()V
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    return-void
.end method

.method private isAlivePid(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 759
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, "pidFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isThirdParty(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p0, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "res":Z
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyPG(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 391
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/huawei/pgmng/common/Utils;->handleTimeOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private proxyBroadcastInnerLocked(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "pendingBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .local p2, "unProxyPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "unProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 907
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 908
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 909
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 910
    .local v2, "nextReceiver":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/server/am/HwBroadcastQueue;->getPkg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "proxyPkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 912
    invoke-direct {p0, v2}, Lcom/android/server/am/HwBroadcastQueue;->getPid(Ljava/lang/Object;)I

    move-result v3

    .line 913
    .local v3, "pid":I
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 915
    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/am/HwBroadcastQueue;->dropActionLocked(Ljava/lang/String;ILcom/android/server/am/BroadcastRecord;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 918
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v2    # "nextReceiver":Ljava/lang/Object;
    .end local v3    # "pid":I
    .end local v4    # "proxyPkg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setAppProxyBCActions(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 578
    const-string v1, "HwBroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " proxy broadcast actions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz p2, :cond_1

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 581
    .local v0, "appActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .end local v0    # "appActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private shouldNotifyPG(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiverPkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 399
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v2

    .line 403
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 404
    .local v1, "proxyActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "proxyActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 409
    .restart local v1    # "proxyActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 412
    .local v0, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    .end local v0    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldProxy(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 381
    sget-boolean v1, Lcom/android/server/am/HwBroadcastQueue;->mProxyFeature:Z

    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private trimAndEnqueueBroadcast(ZZLcom/android/server/am/BroadcastRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "trim"    # Z
    .param p2, "isParallel"    # Z
    .param p3, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "recevier"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 332
    :cond_0
    if-eqz p2, :cond_4

    .line 333
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 334
    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 337
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/android/server/am/HwBroadcastQueue;->canTrim(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 340
    add-int/lit8 v1, v1, -0x1

    .line 344
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v3, "HwBroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trim and enqueue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Parallel:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Ordered:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v3, p0, Lcom/android/server/am/HwBroadcastQueue;->MAX_PROXY_BROADCAST:I

    rem-int v3, v1, v3

    if-nez v3, :cond_3

    .line 366
    const-string v3, "HwBroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy max broadcasts, notify pg. recevier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v3, "overflow_bc"

    invoke-direct {p0, v3, p4, v6}, Lcom/android/server/am/HwBroadcastQueue;->notifyPG(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    iget v3, p0, Lcom/android/server/am/HwBroadcastQueue;->MAX_PROXY_BROADCAST:I

    add-int/lit8 v3, v3, 0xa

    if-le v1, v3, :cond_3

    .line 370
    const-string v3, "HwBroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "warnning, proxy more broadcast, notify pg. recevier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v3, "overflow_exception"

    invoke-direct {p0, v3, p4, v6}, Lcom/android/server/am/HwBroadcastQueue;->notifyPG(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    :cond_3
    return-void

    .line 346
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 347
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 350
    .restart local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_5

    invoke-direct {p0, p3, v0}, Lcom/android/server/am/HwBroadcastQueue;->canTrim(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 353
    add-int/lit8 v1, v1, -0x1

    .line 357
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanupBroadcastLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 203
    const/4 v10, 0x0

    .line 205
    .local v10, "reschedule":Z
    invoke-static {p1}, Lcom/android/server/am/HwBroadcastQueue;->isThirdParty(Lcom/android/server/am/ProcessRecord;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v11, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-super {p0, v11}, Lcom/android/server/am/BroadcastQueue;->skipPendingBroadcastLocked(I)V

    .line 211
    iget-object v11, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 212
    iget-object v11, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    .line 214
    .local v7, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v11, v7, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-ne v11, p1, :cond_4

    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, "isSentToSelf":Z
    iget-object v9, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 217
    .local v9, "receivers":Ljava/util/List;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    .local v0, "N":I
    :goto_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v0, :cond_2

    .line 219
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 220
    .local v6, "o":Ljava/lang/Object;
    instance-of v11, v6, Landroid/content/pm/ResolveInfo;

    if-eqz v11, :cond_6

    .line 221
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .local v1, "appProcessName":Ljava/lang/String;
    move-object v3, v6

    .line 222
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 223
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 224
    .local v8, "receiverProcessName":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 225
    const/4 v4, 0x1

    .line 232
    .end local v1    # "appProcessName":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "receiverProcessName":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_4

    .line 234
    if-nez v2, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/am/HwBroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 237
    :cond_3
    iget-object v11, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    const/4 v10, 0x1

    .line 211
    .end local v0    # "N":I
    .end local v4    # "isSentToSelf":Z
    .end local v5    # "j":I
    .end local v9    # "receivers":Ljava/util/List;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 217
    .restart local v4    # "isSentToSelf":Z
    .restart local v9    # "receivers":Ljava/util/List;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 218
    .restart local v0    # "N":I
    .restart local v5    # "j":I
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 245
    .end local v0    # "N":I
    .end local v4    # "isSentToSelf":Z
    .end local v5    # "j":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v9    # "receivers":Ljava/util/List;
    :cond_7
    if-eqz v10, :cond_0

    .line 246
    invoke-super {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1370
    const-string v3, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanupDisabledPackageReceiversLocked for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const v3, 0x7ffe795f

    if-ne v3, p3, :cond_6

    .line 1372
    const/4 v0, 0x0

    .line 1373
    .local v0, "didSomething":Z
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1375
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->euid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    .line 1373
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1378
    :catch_0
    move-exception v1

    .line 1379
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1381
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, v7, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1383
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    move v0, v4

    .line 1405
    .end local v0    # "didSomething":Z
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return v0

    .line 1388
    .restart local v0    # "didSomething":Z
    .restart local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_2

    .line 1390
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->euid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_5

    .line 1388
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1393
    :catch_1
    move-exception v1

    .line 1394
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1396
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, v7, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1398
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    move v0, v4

    .line 1399
    goto :goto_1

    .line 1405
    .end local v0    # "didSomething":Z
    .end local v2    # "i":I
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueue;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    goto :goto_1
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    .prologue
    .line 1274
    invoke-super/range {p0 .. p7}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v13

    .line 1276
    .local v13, "ret":Z
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1277
    sget-boolean v14, Lcom/android/server/am/HwBroadcastQueue;->mProxyFeature:Z

    if-eqz v14, :cond_a

    .line 1278
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Proxy broadcast ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    Default proxy actions :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyActions:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    const-string v14, "    APP proxy actions :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mAppProxyActions:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1283
    .local v10, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1284
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1285
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1286
    .local v5, "app":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1287
    .local v4, "actions":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 1288
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "actions":Ljava/lang/Object;
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    .end local v5    # "app":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    :cond_1
    const-string v14, "    Same kind actions :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mSameKindsActionList:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1296
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1297
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1298
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1299
    .local v2, "action1":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1300
    .local v3, "action2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " <-> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1303
    .end local v2    # "action1":Ljava/lang/String;
    .end local v3    # "action2":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    :cond_2
    const-string v14, "    APP drop actions :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mAppDropActions:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1305
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1306
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1307
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1308
    .restart local v5    # "app":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1309
    .restart local v4    # "actions":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 1310
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1312
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "actions":Ljava/lang/Object;
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1316
    .end local v5    # "app":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    :cond_4
    const-string v14, "    Process drop actions :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1318
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1319
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1320
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1321
    .local v12, "process":Ljava/lang/Integer;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1322
    .restart local v4    # "actions":Ljava/lang/Object;
    if-nez v4, :cond_5

    .line 1323
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1325
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "actions":Ljava/lang/Object;
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1329
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "process":Ljava/lang/Integer;
    :cond_6
    const-string v14, "    Proxy pkgs broadcast count:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1331
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1332
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1333
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1334
    .restart local v5    # "app":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1335
    .local v7, "count":Ljava/lang/Integer;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1338
    .end local v5    # "app":Ljava/lang/String;
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    :cond_7
    const-string v14, "    Action exclude pkg:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1340
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1341
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1342
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1343
    .local v1, "action":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 1344
    .local v11, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1347
    .end local v1    # "action":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    MAX_PROXY_BROADCAST:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/HwBroadcastQueue;->MAX_PROXY_BROADCAST:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Proxy Parallel Broadcast:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v15, 0x258

    if-gt v14, v15, :cond_9

    .line 1351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 1352
    .local v6, "br":Lcom/android/server/am/BroadcastRecord;
    const-string v14, "    "

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v14}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 1356
    .end local v6    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Proxy Ordered Broadcast:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v15, 0x258

    if-gt v14, v15, :cond_a

    .line 1358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 1359
    .restart local v6    # "br":Lcom/android/server/am/BroadcastRecord;
    const-string v14, "    "

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v14}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_7

    .line 1363
    .end local v6    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "iter":Ljava/util/Iterator;
    :cond_a
    return v13
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/16 v7, 0x96

    const/16 v6, 0x68

    .line 1040
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1042
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1043
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1045
    .local v0, "brSize":I
    iget-boolean v1, p0, Lcom/android/server/am/HwBroadcastQueue;->enableUploadRadar:Z

    if-nez v1, :cond_0

    if-ge v0, v7, :cond_0

    .line 1046
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/HwBroadcastQueue;->enableUploadRadar:Z

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable radar when current queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1050
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/HwBroadcastQueue;->enableUploadRadar:Z

    if-eqz v1, :cond_1

    if-lt v0, v7, :cond_1

    .line 1051
    const/16 v1, 0xaf1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/HwBroadcastQueue;->uploadRadarMessage(ILandroid/os/Bundle;)Z

    .line 1052
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/HwBroadcastQueue;->enableUploadRadar:Z

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable radar after radar uploaded, current size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 1057
    .end local v0    # "brSize":I
    :cond_1
    return-void
.end method

.method public enqueueProxyBroadcast(ZLcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Z
    .locals 28
    .param p1, "isParallel"    # Z
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    .line 427
    if-nez p3, :cond_0

    .line 428
    const/4 v4, 0x0

    .line 474
    :goto_0
    return v4

    .line 431
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/HwBroadcastQueue;->getPkg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 432
    .local v26, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/HwBroadcastQueue;->getPid(Ljava/lang/Object;)I

    move-result v25

    .line 433
    .local v25, "pid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/HwBroadcastQueue;->getUid(Ljava/lang/Object;)I

    move-result v27

    .line 436
    .local v27, "uid":I
    if-nez v26, :cond_1

    .line 438
    const/4 v4, 0x0

    goto :goto_0

    .line 441
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HwBroadcastQueue;->shouldProxy(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 442
    const/4 v4, 0x0

    goto :goto_0

    .line 445
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v14, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 450
    .local v15, "resultTo":Landroid/content/IIntentReceiver;
    if-nez p1, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v4, :cond_4

    .line 451
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_3

    const-string v4, "HwBroadcastQueue"

    const-string v5, "reset resultTo null"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_3
    const/4 v15, 0x0

    .line 456
    :cond_4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    .line 458
    .local v23, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HwBroadcastQueue;->shouldNotifyPG(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 459
    .local v24, "notify":Z
    if-eqz v24, :cond_5

    .line 462
    const/16 v4, 0x94

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v4, v0, v1, v5, v6}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueProxyBroadcast notify pg broadcast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_5
    new-instance v3, Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v22, v0

    invoke-direct/range {v3 .. v22}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V

    .line 470
    .local v3, "proxyBR":Lcom/android/server/am/BroadcastRecord;
    if-nez v24, :cond_7

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/android/server/am/HwBroadcastQueue;->trimAndEnqueueBroadcast(ZZLcom/android/server/am/BroadcastRecord;Ljava/lang/String;)V

    .line 472
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_6

    const-string v4, "HwBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueProxyBroadcast enqueue broadcast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 470
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getMtmBRManager()Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mHwMtmBroadcastResourceManager:Lcom/android/server/am/AbsHwMtmBroadcastResourceManager;

    return-object v0
.end method

.method public getMtmBRManagerEnabled()Z
    .locals 1

    .prologue
    .line 990
    sget-boolean v0, Lcom/android/server/am/HwBroadcastQueue;->mtmBRManagerEnabled:Z

    return v0
.end method

.method public proxyBCConfig(ILjava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyFeature:Z

    if-nez v0, :cond_0

    .line 542
    const-string v0, "HwBroadcastQueue"

    const-string v1, "proxy bc not support"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string v0, "HwBroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy %s bc config [%d][%s]["

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 548
    packed-switch p1, :pswitch_data_0

    .line 570
    :goto_1
    :try_start_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 550
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/HwBroadcastQueue;->clearConfigLocked()V

    goto :goto_1

    .line 553
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/HwBroadcastQueue;->configProxyBCActionsLocked(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 556
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/HwBroadcastQueue;->configDropBCActionsLocked(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 559
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/HwBroadcastQueue;->configDropBCByPidLocked(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 562
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/server/am/HwBroadcastQueue;->configMaxProxyBCLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 565
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/HwBroadcastQueue;->configSameActionLocked(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public proxyBroadcast(Ljava/util/List;Z)J
    .locals 18
    .param p2, "proxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v14, Lcom/android/server/am/HwBroadcastQueue;->mProxyFeature:Z

    if-nez v14, :cond_0

    .line 772
    const-string v14, "HwBroadcastQueue"

    const-string v15, "proxy bc not support"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-wide/16 v4, -0x1

    .line 885
    :goto_0
    return-wide v4

    .line 776
    :cond_0
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_1

    const-string v15, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    const-string v14, "proxy "

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " broadcast "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " pkgs:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HwBroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 779
    const-wide/16 v4, 0x0

    .line 780
    .local v4, "delay":J
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/am/HwBroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 781
    .local v9, "pending":Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v11, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_6

    .line 783
    move-object/from16 v11, p1

    .line 784
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 785
    .local v10, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 786
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 886
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "pending":Z
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 776
    .end local v4    # "delay":J
    :cond_3
    const-string v14, "unproxy "

    goto :goto_1

    .line 789
    .restart local v4    # "delay":J
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "pending":Z
    .restart local v11    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-eqz v9, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 790
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BroadcastRecord;

    .line 791
    .local v12, "r":Lcom/android/server/am/BroadcastRecord;
    iget v14, v12, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v14, v0, :cond_5

    .line 792
    iget-object v14, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v0, v12, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 793
    .local v2, "curReceiver":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/HwBroadcastQueue;->getPkg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 794
    .restart local v10    # "pkg":Ljava/lang/String;
    if-eqz v10, :cond_5

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/HwBroadcastQueue;->mTimeoutPeriod:J

    .line 885
    .end local v2    # "curReceiver":Ljava/lang/Object;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_5
    :goto_3
    monitor-exit v15

    goto/16 :goto_0

    .line 801
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz p1, :cond_8

    .line 802
    move-object/from16 v11, p1

    .line 806
    :goto_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v7, "orderedProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v8, "parallelProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelPendingBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v8}, Lcom/android/server/am/HwBroadcastQueue;->proxyBroadcastInnerLocked(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedPendingBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v7}, Lcom/android/server/am/HwBroadcastQueue;->proxyBroadcastInnerLocked(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProcessDropActions:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 829
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 832
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 833
    .restart local v10    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyPkgsCount:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 804
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "orderedProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v8    # "parallelProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mProxyBroadcastPkgs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v11, Ljava/util/ArrayList;

    .restart local v11    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 838
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "orderedProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .restart local v8    # "parallelProxyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    :cond_9
    const/4 v13, 0x0

    .line 844
    .local v13, "scheduleBroadcast":Z
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_a

    const-string v14, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unproxy "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Broadcast pkg Parallel Broadcasts ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_b

    .line 847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 846
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 849
    :cond_b
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_c

    const-string v14, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unproxy "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Broadcast pkg Parallel Broadcasts ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_c
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_d

    const-string v14, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unproxy "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Broadcast pkg Ordered Broadcasts ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_d
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_f

    .line 862
    if-eqz v9, :cond_e

    .line 863
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    add-int/lit8 v16, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 861
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 865
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 868
    :cond_f
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_10

    const-string v14, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unproxy "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Broadcast pkg Ordered Broadcasts ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 876
    :cond_11
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_12

    const-string v14, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unproxy "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Broadcast pkg Parallel Broadcasts ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_12
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v14, :cond_13

    const-string v14, "HwBroadcastQueue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unproxy "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HwBroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Broadcast pkg Ordered Broadcasts ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/HwBroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public setActionExcludePkg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 500
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 501
    const-string v1, "HwBroadcastQueue"

    const-string v2, "clear mActionExcludePkgs"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 519
    :goto_0
    return-void

    .line 506
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 507
    :cond_1
    const-string v1, "HwBroadcastQueue"

    const-string v2, "setActionExcludePkg invaild param"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_2
    const/4 v0, 0x0

    .line 511
    .local v0, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/Set;

    .line 513
    .restart local v0    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 516
    .restart local v0    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setProxyBCActions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/HwBroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 487
    if-eqz p1, :cond_0

    .line 489
    const-string v0, "HwBroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set default proxy broadcast actions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/server/am/HwBroadcastQueue;->mProxyActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 493
    :cond_0
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uploadRadarMessage(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "scene"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 997
    const/4 v2, 0x0

    .line 998
    .local v2, "isSuccess":Z
    packed-switch p1, :pswitch_data_0

    .line 1027
    :pswitch_0
    const/4 v2, 0x0

    .line 1030
    :goto_0
    return v2

    .line 1003
    :pswitch_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1004
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mCopyOrderedBroadcasts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/HwBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1008
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mCopyOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/am/HwBroadcastQueue;->handleBroadcastQueueOverlength(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mCopyOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1016
    :goto_2
    const/4 v2, 0x1

    .line 1017
    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "HwBroadcastQueue"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastQueue;->mCopyOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/am/HwBroadcastQueue;->mCopyOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    throw v3

    .line 1021
    .end local v1    # "i":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/HwBroadcastQueue;->handleReceiverTimeOutRadar()V

    .line 1023
    const/4 v2, 0x1

    .line 1024
    goto :goto_0

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0xaf1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

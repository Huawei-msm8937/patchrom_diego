.class public Lcom/huawei/pgmng/middleware/PGMiddleWare;
.super Lcom/huawei/pgmng/PGApiClient;
.source "PGMiddleWare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;
    }
.end annotation


# static fields
.field private static final DISPLAY_ACL_SUPPORT:Ljava/lang/String; = "hw.display.acl_support"

.field private static final LOW_AUDIO_EFFECT_PROP:Ljava/lang/String; = "ro.game.low_audio_effect"

.field private static final mListenerLock:Ljava/lang/Object;

.field private static final mLowAudioEffectEnabled:Z


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInterestListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInterestedAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPGApi:Lcom/huawei/pgmng/PGApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "ro.game.low_audio_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mLowAudioEffectEnabled:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/pgmng/PGApi;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pgApi"    # Lcom/huawei/pgmng/PGApi;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/huawei/pgmng/PGApiClient;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mPGApi:Lcom/huawei/pgmng/PGApi;

    .line 22
    iput-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mContext:Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->DEBUG:Z

    .line 25
    const-string v0, "PGMiddleWare"

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestListeners:Ljava/util/HashMap;

    .line 35
    iput-object p2, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mPGApi:Lcom/huawei/pgmng/PGApi;

    .line 36
    iput-object p1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public attachPGSceneListenter(Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;Ljava/util/ArrayList;)Z
    .locals 2
    .param p1, "pgSceneListener"    # Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "interestAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    sget-object v1, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v1

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleAction(Lcom/huawei/pgmng/PGAction;)V
    .locals 10
    .param p1, "action"    # Lcom/huawei/pgmng/PGAction;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionId()I

    move-result v4

    .line 74
    .local v4, "mActionId":I
    const/4 v5, 0x0

    .line 75
    .local v5, "mPGSL":Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;
    const/4 v2, 0x0

    .line 76
    .local v2, "interestAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in handleAction method, action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    sget-object v7, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mListenerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 79
    :try_start_0
    iget-object v6, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 80
    monitor-exit v7

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v6, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 83
    .local v3, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;

    move-object v5, v0

    .line 88
    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->DEBUG:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in handleAction, invoke client = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    invoke-interface {v5, p1}, Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;->onPGScene(Lcom/huawei/pgmng/PGAction;)V

    goto :goto_1

    .line 92
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v3    # "iter":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public initial()Z
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "mInitResult":Z
    sget-boolean v1, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mLowAudioEffectEnabled:Z

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    const-string v2, "support and register AudioEffectLowPowerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;

    iget-object v2, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->getInterestAction()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/huawei/pgmng/middleware/PGMiddleWare;->attachPGSceneListenter(Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;Ljava/util/ArrayList;)Z

    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInterestedAction.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mPGApi:Lcom/huawei/pgmng/PGApi;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mPGApi:Lcom/huawei/pgmng/PGApi;

    iget-object v2, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/pgmng/PGApi;->registerPGAction(Lcom/huawei/pgmng/PGApiClient;Ljava/util/ArrayList;)V

    .line 55
    :cond_0
    :goto_0
    const-string v1, "hw.display.acl_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    const-string v2, "support and register ScreenAclLowerPowerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;

    iget-object v2, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->getInterestAction()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/huawei/pgmng/middleware/PGMiddleWare;->attachPGSceneListenter(Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;Ljava/util/ArrayList;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInterestedAction.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mPGApi:Lcom/huawei/pgmng/PGApi;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mPGApi:Lcom/huawei/pgmng/PGApi;

    iget-object v2, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->mInterestedAction:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/pgmng/PGApi;->registerPGAction(Lcom/huawei/pgmng/PGApiClient;Ljava/util/ArrayList;)V

    .line 69
    :cond_1
    :goto_1
    return v0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    const-string v2, "get LOW_AUDIO_EFFECT_PROP is false, disable the game scene low audio effect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/PGMiddleWare;->TAG:Ljava/lang/String;

    const-string v2, "get DISPLAY_ACL_SUPPORT false, not support ScreenAclLowerPowerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

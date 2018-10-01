.class public Lcom/huawei/pgmng/PGApi;
.super Ljava/lang/Object;
.source "PGApi.java"


# static fields
.field private static final EVENT_DISPATCH_ACTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PGApi_client"


# instance fields
.field private mAPIClient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/pgmng/PGApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private mCarePGActionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/huawei/pgmng/PGApiClient;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/pgmng/PGApi;->mAPIClient:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/pgmng/PGApi;->mCarePGActionList:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/pgmng/PGApi;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/huawei/pgmng/PGApi;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/huawei/pgmng/PGApi;->initAllClient()V

    .line 28
    return-void
.end method

.method private createPGAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/pgmng/PGAction;
    .locals 2
    .param p1, "actionId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extend1"    # Ljava/lang/String;
    .param p4, "extend2"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/huawei/pgmng/PGAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/pgmng/PGAction;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "action":Lcom/huawei/pgmng/PGAction;
    invoke-static {p1}, Lcom/huawei/pgmng/PGAction;->checkActionFlag(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/pgmng/PGAction;->setActionFlag(I)V

    .line 113
    invoke-static {p1}, Lcom/huawei/pgmng/PGAction;->checkActionType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/pgmng/PGAction;->setActionType(I)V

    .line 114
    return-object v0
.end method

.method private initAllClient()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/huawei/pgmng/PGApi;->initPGMiddleWare()V

    .line 39
    return-void
.end method

.method private initPGMiddleWare()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/huawei/pgmng/middleware/PGMiddleWare;

    iget-object v1, p0, Lcom/huawei/pgmng/PGApi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/huawei/pgmng/middleware/PGMiddleWare;-><init>(Landroid/content/Context;Lcom/huawei/pgmng/PGApi;)V

    .line 51
    .local v0, "mPGMW":Lcom/huawei/pgmng/middleware/PGMiddleWare;
    invoke-virtual {v0}, Lcom/huawei/pgmng/middleware/PGMiddleWare;->initial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/huawei/pgmng/PGApi;->mAPIClient:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method private notifyClient(Lcom/huawei/pgmng/PGAction;)V
    .locals 8
    .param p1, "action"    # Lcom/huawei/pgmng/PGAction;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionId()I

    move-result v3

    .line 72
    .local v3, "id":I
    const-string v4, "PGApi_client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recv actoionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/huawei/pgmng/PGApi;->mAPIClient:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/pgmng/PGApiClient;

    .line 75
    .local v1, "client":Lcom/huawei/pgmng/PGApiClient;
    iget-object v4, p0, Lcom/huawei/pgmng/PGApi;->mCarePGActionList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 76
    .local v0, "careAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {v1, p1}, Lcom/huawei/pgmng/PGApiClient;->handleAction(Lcom/huawei/pgmng/PGAction;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v3}, Lcom/huawei/pgmng/PGAction;->checkActionType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Lcom/huawei/pgmng/PGAction;->checkActionFlag(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 82
    const-string v4, "PGApi_client"

    const-string v5, "notify the not register action id as PG_ID_DEFAULT_FRONT"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/16 v4, 0x2710

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionExd1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionExd2()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/huawei/pgmng/PGApi;->createPGAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/pgmng/PGAction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huawei/pgmng/PGApiClient;->handleAction(Lcom/huawei/pgmng/PGAction;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v1, p1}, Lcom/huawei/pgmng/PGApiClient;->handleAction(Lcom/huawei/pgmng/PGAction;)V

    goto :goto_0

    .line 93
    .end local v0    # "careAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "client":Lcom/huawei/pgmng/PGApiClient;
    :cond_3
    return-void
.end method


# virtual methods
.method public handleAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extend1"    # Ljava/lang/String;
    .param p4, "extend2"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/pgmng/PGApi;->createPGAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/pgmng/PGAction;

    move-result-object v0

    .line 102
    .local v0, "action":Lcom/huawei/pgmng/PGAction;
    invoke-direct {p0, v0}, Lcom/huawei/pgmng/PGApi;->notifyClient(Lcom/huawei/pgmng/PGAction;)V

    .line 103
    return-void
.end method

.method public hasPGApiClients()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/huawei/pgmng/PGApi;->mAPIClient:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public registerPGAction(Lcom/huawei/pgmng/PGApiClient;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "client"    # Lcom/huawei/pgmng/PGApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/pgmng/PGApiClient;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "careAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/huawei/pgmng/PGApi;->mCarePGActionList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

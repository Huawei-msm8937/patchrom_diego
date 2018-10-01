.class public abstract Lcom/huawei/pgmng/PGApiClient;
.super Ljava/lang/Object;
.source "PGApiClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract handleAction(Lcom/huawei/pgmng/PGAction;)V
.end method

.method public abstract initial()Z
.end method

.class public final Lcom/android/server/content/ContentService$ObserverCall;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final mNode:Lcom/android/server/content/ContentService$ObserverNode;

.field final mObserver:Landroid/database/IContentObserver;

.field final mSelfChange:Z

.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V
    .locals 1
    .param p1, "node"    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "selfChange"    # Z

    .prologue
    const/4 v0, -0x1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 387
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    .line 388
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    .line 390
    iput v0, p0, Lcom/android/server/content/ContentService$ObserverCall;->pid:I

    .line 391
    iput v0, p0, Lcom/android/server/content/ContentService$ObserverCall;->uid:I

    .line 393
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZII)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "selfChange"    # Z
    .param p4, "_pid"    # I
    .param p5, "_uid"    # I

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 397
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    .line 398
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    .line 399
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCall;->pid:I

    .line 400
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCall;->uid:I

    .line 401
    return-void
.end method

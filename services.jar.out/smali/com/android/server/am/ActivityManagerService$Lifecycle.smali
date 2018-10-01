.class public final Lcom/android/server/am/ActivityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2532
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2534
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwActivityManagerService()Lcom/android/server/HwServiceFactory$IHwActivityManagerService;

    move-result-object v0

    .line 2535
    .local v0, "iAMS":Lcom/android/server/HwServiceFactory$IHwActivityManagerService;
    if-eqz v0, :cond_0

    .line 2536
    invoke-interface {v0, p1}, Lcom/android/server/HwServiceFactory$IHwActivityManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2541
    :goto_0
    return-void

    .line 2538
    :cond_0
    new-instance v1, Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, p1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    goto :goto_0
.end method


# virtual methods
.method public getService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->start()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)V

    .line 2546
    return-void
.end method

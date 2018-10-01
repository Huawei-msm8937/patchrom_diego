.class public abstract Lcom/android/server/job/AbsJobSchedulerService;
.super Lcom/android/server/SystemService;
.source "AbsJobSchedulerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public checkShouldFilterIntent(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

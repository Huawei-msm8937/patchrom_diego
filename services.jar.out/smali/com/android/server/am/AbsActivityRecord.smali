.class public abstract Lcom/android/server/am/AbsActivityRecord;
.super Ljava/lang/Object;
.source "AbsActivityRecord.java"


# instance fields
.field protected mMultiWinService:Landroid/os/IMultiWinService;

.field public multiWinCaller:Landroid/os/IBinder;

.field public multiWinId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFloatingWindow()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWin()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWin(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public isResumedActivity()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isRootActivity()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isTopMultiWin(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.class public abstract Lcom/android/server/wm/AbsTaskStack;
.super Ljava/lang/Object;
.source "AbsTaskStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTask(Lcom/android/server/wm/Task;I)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "aIndex"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public moveMwTask(Lcom/android/server/wm/Task;I)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "aIndex"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

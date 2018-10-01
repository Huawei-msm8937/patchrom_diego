.class public abstract Lcom/android/server/am/AbsTaskRecord;
.super Ljava/lang/Object;
.source "AbsTaskRecord.java"


# instance fields
.field otherMwTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected appSupportsDual(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method protected getMwTaskThumbnailLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "resumedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 17
    return-void
.end method

.method public isFloatingWindow()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isTopMWFinishing()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public releaseMWLInksfromActivityRecord()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

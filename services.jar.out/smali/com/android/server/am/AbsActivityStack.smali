.class public abstract Lcom/android/server/am/AbsActivityStack;
.super Ljava/lang/Object;
.source "AbsActivityStack.java"


# instance fields
.field protected mMultiWinService:Landroid/os/IMultiWinService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkTasksForMWLauncher()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public clearAsMultiWindow()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public clearOtherMWLinks(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 120
    return-void
.end method

.method public completeMultiWinPauseLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prevPausingActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public completeMultiWinResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 30
    return-void
.end method

.method protected dumpRecord(ILcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected dumpStack(Ljava/lang/String;)V
    .locals 0
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public findAllTaskLocked(Lcom/android/server/am/ActivityRecord;)[Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findRemoveMwHistoryRecords(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "topMwTaskRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "mwRemoveTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected finishMwActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getInvalidFlag(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "changes"    # I
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "naviConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWinService()Landroid/os/IMultiWinService;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleHwActivityStackHandlerMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    return-void
.end method

.method protected isInMultiWindowMode()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected isMwNonFullScreenSplActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aShortComponent"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected isNewTaskStarted(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "aApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "aTopTask"    # Lcom/android/server/am/TaskRecord;
    .param p3, "aActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method protected isProcessRecordSame(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "aApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "aTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public minimalMwResumeActivityLocked()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method moveMWTaskToBack(IZ)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "isFinishTaskPrior"    # Z

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method moveMWTaskToFront(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public moveMwTaskToBackLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method moveMwTaskToFront(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 60
    return-void
.end method

.method public moveMwTaskToFrontLocked(Lcom/android/server/am/TaskRecord;I)Lcom/android/server/am/TaskRecord;
    .locals 0
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I

    .prologue
    .line 49
    return-object p1
.end method

.method protected releaseFromMW(Lcom/android/server/am/TaskRecord;Z)V
    .locals 0
    .param p1, "aTr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "aReleaseImmediate"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public releaseMWLInksfromActivityRecord(I)V
    .locals 0
    .param p1, "aTaskId"    # I

    .prologue
    .line 127
    return-void
.end method

.method protected removeMWHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .param p2, "appTaskRecord"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "mwRemoveTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    return-void
.end method

.method protected removeMWHistoryRecordsForAppLocked(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p2, "isAllProcessRecordSame"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "mwRemoveTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    return-void
.end method

.method protected resumeMwTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected resumeNextMultiWinActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "aPrev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 88
    return-void
.end method

.method protected setMWResumeActivityRecordLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 0
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resume"    # Z

    .prologue
    .line 135
    return-void
.end method

.method protected setSoundEffectState(ZLjava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isOnTop"    # Z
    .param p4, "reserved"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method protected stopMwActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 101
    return-void
.end method

.method protected topMWRunningActivityLockedPrevTask()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

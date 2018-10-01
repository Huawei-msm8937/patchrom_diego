.class public Lcom/android/server/am/AbsActivityStackSupervisor;
.super Ljava/lang/Object;
.source "AbsActivityStackSupervisor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected RecognitionMaliciousApp(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intet"    # Landroid/content/Intent;

    .prologue
    .line 14
    return-void
.end method

.method public clearAsMultiWindow()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected getMultiWinService()Landroid/os/IMultiWinService;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMwIntentActivityRecord(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMwSourceRecord(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isHomeLauncheFromMultiWin(ZILandroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "componentSpecified"    # Z
    .param p2, "callingUid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected isHwMwLauncherVisible()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected isMwNonFocusLaunch(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected pauseMwBackStacks()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method protected registerMwActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 52
    return-void
.end method

.method protected releaseMultiWinRecord(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 72
    return-void
.end method

.method protected startMwActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Z)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "startFlags"    # I
    .param p4, "launchFlags"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "isMWRoot"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected updateMwCallerActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 34
    return-void
.end method

.method protected updateMwTaskTopOfHome(Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 55
    return-void
.end method

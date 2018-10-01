.class Lcom/android/server/fingerprint/FingerprintService$3;
.super Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 876
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG_FPLOG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    const/16 v0, 0x7d2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FingerprintUnlockDataCollector;->reportFingerDown()V

    .line 880
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->downTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1102(Lcom/android/server/fingerprint/FingerprintService;J)J

    .line 887
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$3$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$3$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 893
    return-void

    .line 882
    :cond_1
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FingerprintUnlockDataCollector;->reportCaptureCompleted()V

    goto :goto_0
.end method

.method public onAuthenticated(JII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 898
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG_FPLOG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    if-eqz p3, :cond_1

    const/4 v6, 0x1

    .line 902
    .local v6, "authenticated":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->fpDataCollector:Lcom/android/server/FingerprintUnlockDataCollector;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/FingerprintUnlockDataCollector;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/FingerprintUnlockDataCollector;->reportFingerprintAuthenticated(Z)V

    .line 904
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->auTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1002(Lcom/android/server/fingerprint/FingerprintService;J)J

    .line 910
    .end local v6    # "authenticated":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$3$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    return-void

    .line 901
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$3$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method public onEnumerate(J[I[I)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$6;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$3$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;J[I[I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 946
    return-void
.end method

.method public onError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$3$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$3$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 926
    return-void
.end method

.method public onRemoved(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$5;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$3$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    return-void
.end method

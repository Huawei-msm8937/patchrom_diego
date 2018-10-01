.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field currentUserId:I

.field isUnlock:Z

.field mAcquiredInfo:I

.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZ)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "currentUserId"    # I
    .param p5, "userId"    # I
    .param p6, "restricted"    # Z

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isUnlock:Z

    .line 823
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I

    .line 656
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 657
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 658
    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    .line 659
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->currentUserId:I

    .line 660
    iput-boolean p6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    .line 662
    if-eqz p2, :cond_0

    .line 664
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 647
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 647
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 647
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method private isScreenOn(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 745
    if-nez p1, :cond_0

    .line 746
    const-string v2, "FingerprintService"

    const-string v3, "input context is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_0
    return v1

    .line 749
    :cond_0
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 750
    .local v0, "power":Landroid/os/PowerManager;
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    goto :goto_0

    .line 753
    :cond_1
    const-string v2, "FingerprintService"

    const-string v3, "PowerManager is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v1, 0x1

    .line 828
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v2, :cond_0

    .line 837
    :goto_0
    return v1

    .line 830
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    const/4 v1, 0x0

    .line 837
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I

    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendAcquired:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I

    throw v1
.end method

.method private sendAuthenticated(II)Z
    .locals 12
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 762
    const/4 v9, 0x0

    .line 763
    .local v9, "result":Z
    if-eqz p1, :cond_5

    const/4 v6, 0x1

    .line 764
    .local v6, "authenticated":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_8

    .line 766
    if-nez v6, :cond_6

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleHwFailedAttempt()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    .line 774
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->auTime:J
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->downTime:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{CostTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->auTime:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->downTime:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v10

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Flog;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z

    .line 787
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I

    if-nez v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 789
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_2
    :goto_2
    if-nez p1, :cond_9

    .line 802
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isUnlock:Z

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintErrorHw(Landroid/content/Context;)V

    .line 805
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 806
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 820
    :cond_4
    :goto_3
    return v9

    .line 763
    .end local v6    # "authenticated":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 779
    .restart local v6    # "authenticated":Z
    :cond_6
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    if-nez v0, :cond_7

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object v8, v0

    .line 781
    .local v8, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_4
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->currentUserId:I

    invoke-interface {v0, v2, v3, v8, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    .line 783
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->opPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ErrorCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v3, v3, Lcom/android/server/fingerprint/FingerprintService;->mHwFailedAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Flog;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 792
    .end local v8    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :catch_0
    move-exception v7

    .line 793
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "Failed to notify Authenticated:"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    const/4 v9, 0x1

    .line 795
    goto/16 :goto_2

    .line 779
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 797
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 814
    :cond_9
    or-int/lit8 v9, v9, 0x1

    .line 816
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isUnlock:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 817
    :cond_a
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3
.end method

.method private sendEnrollResult(III)Z
    .locals 8
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    .line 727
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 740
    :goto_0
    return v7

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 731
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 732
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mAcquiredInfo:I

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    if-nez p3, :cond_1

    move v1, v7

    :goto_1
    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendError(I)Z
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRemoved(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 713
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v3, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v1

    .line 715
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v3, "Failed to notify Removed:"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 720
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 693
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$600(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 694
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 695
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 678
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 687
    :cond_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 688
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$600(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 707
    return-void

    .line 705
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public setLock(Z)V
    .locals 0
    .param p1, "islock"    # Z

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isUnlock:Z

    .line 675
    return-void
.end method

.class Lcom/android/server/policy/HWExtMotionRotationProcessor$1;
.super Ljava/lang/Object;
.source "HWExtMotionRotationProcessor.java"

# interfaces
.implements Lcom/huawei/hwextdevice/HWExtDeviceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HWExtMotionRotationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HWExtMotionRotationProcessor;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDataChanged(Lcom/huawei/hwextdevice/HWExtDeviceEvent;)V
    .locals 7
    .param p1, "hwextDeviceEvent"    # Lcom/huawei/hwextdevice/HWExtDeviceEvent;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/huawei/hwextdevice/HWExtDeviceEvent;->getDeviceValues()[F

    move-result-object v0

    .line 76
    .local v0, "deviceValues":[F
    if-nez v0, :cond_1

    .line 77
    const-string v4, "HWEMRP"

    const-string v5, "onDeviceDataChanged  deviceValues is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    array-length v1, v0

    .line 81
    .local v1, "len":I
    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 84
    const/4 v4, 0x1

    aget v4, v0, v4

    float-to-int v3, v4

    .line 85
    .local v3, "proposedRotation":I
    const-string v4, "HWEMRP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeviceDataChanged  proposedRotation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v4, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    # getter for: Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I
    invoke-static {v4}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->access$000(Lcom/android/server/policy/HWExtMotionRotationProcessor;)I

    move-result v2

    .line 87
    .local v2, "oldProposedRotation":I
    const-string v4, "HWEMRP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeviceDataChanged  oldProposedRotation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    # setter for: Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I
    invoke-static {v4, v3}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->access$002(Lcom/android/server/policy/HWExtMotionRotationProcessor;I)I

    .line 92
    if-eq v3, v2, :cond_0

    if-ltz v3, :cond_0

    .line 93
    iget-object v4, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    # getter for: Lcom/android/server/policy/HWExtMotionRotationProcessor;->mWOLPxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;
    invoke-static {v4}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->access$100(Lcom/android/server/policy/HWExtMotionRotationProcessor;)Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    # getter for: Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I
    invoke-static {v5}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->access$000(Lcom/android/server/policy/HWExtMotionRotationProcessor;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;->setCurrentOrientation(I)V

    .line 94
    iget-object v4, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    # getter for: Lcom/android/server/policy/HWExtMotionRotationProcessor;->mWOLPxy:Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;
    invoke-static {v4}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->access$100(Lcom/android/server/policy/HWExtMotionRotationProcessor;)Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/HWExtMotionRotationProcessor$1;->this$0:Lcom/android/server/policy/HWExtMotionRotationProcessor;

    # getter for: Lcom/android/server/policy/HWExtMotionRotationProcessor;->mProposedRotation:I
    invoke-static {v5}, Lcom/android/server/policy/HWExtMotionRotationProcessor;->access$000(Lcom/android/server/policy/HWExtMotionRotationProcessor;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;->notifyProposedRotation(I)V

    goto :goto_0
.end method

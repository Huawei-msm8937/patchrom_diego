.class Lcom/android/server/display/DisplayPowerController$4;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1519
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1502
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mLABCSensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mLABCEnabled:Z
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1503
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v1, v3

    .line 1504
    .local v1, "Backlight":I
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v0, v3

    .line 1505
    .local v0, "Ambientlight":I
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-int v2, v3

    .line 1507
    .local v2, "FeedBack":I
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1508
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LABC] onSensorChanged----BL =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", AL=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FeedBack=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_0
    if-ltz v1, :cond_1

    .line 1511
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mPendingBacklight:I
    invoke-static {v3, v1}, Lcom/android/server/display/DisplayPowerController;->access$1402(Lcom/android/server/display/DisplayPowerController;I)I

    .line 1512
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$000(Lcom/android/server/display/DisplayPowerController;)V

    .line 1515
    .end local v0    # "Ambientlight":I
    .end local v1    # "Backlight":I
    .end local v2    # "FeedBack":I
    :cond_1
    return-void
.end method

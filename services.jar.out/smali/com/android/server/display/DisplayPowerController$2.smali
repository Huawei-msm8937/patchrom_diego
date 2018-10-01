.class Lcom/android/server/display/DisplayPowerController$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


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
    .line 671
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 674
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mUsingHwSmartBackLightController:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mSmartBackLightEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mHwSmartBackLightController:Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;

    invoke-interface {v0, v2}, Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;->updateBrightnessState(I)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerPolicyChangeFromDimming:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerController;->mPowerPolicyChangeFromDimming:Z
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$402(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 679
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBackLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/lights/Light;->writeAutoBrightnessDbEnable(Z)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximityPositive:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->getCurrentBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$000(Lcom/android/server/display/DisplayPowerController;)V

    .line 689
    return-void

    .line 684
    :catch_0
    move-exception v0

    goto :goto_0
.end method

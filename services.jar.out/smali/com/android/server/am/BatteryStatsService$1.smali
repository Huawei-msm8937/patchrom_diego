.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setBatteryState(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$health:I

.field final synthetic val$level:I

.field final synthetic val$plugType:I

.field final synthetic val$status:I

.field final synthetic val$temp:I

.field final synthetic val$volt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 991
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 992
    .local v7, "onBattery":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-ne v0, v7, :cond_2

    .line 995
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V

    .line 997
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->misBetaUser:Z
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$000(Lcom/android/server/am/BatteryStatsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mPowerInfoService:Lcom/android/server/am/IHwPowerInfoService;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/IHwPowerInfoService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/IHwPowerInfoService;->notePowerInfoBatteryState(II)V

    .line 1001
    :cond_0
    monitor-exit v8

    .line 1018
    :goto_1
    return-void

    .line 991
    .end local v7    # "onBattery":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1003
    .restart local v7    # "onBattery":Z
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v1, "battery-state"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1009
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->misBetaUser:Z
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$000(Lcom/android/server/am/BatteryStatsService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mPowerInfoService:Lcom/android/server/am/IHwPowerInfoService;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/IHwPowerInfoService;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mPowerInfoService:Lcom/android/server/am/IHwPowerInfoService;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/IHwPowerInfoService;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    invoke-interface {v0, v2, v3}, Lcom/android/server/am/IHwPowerInfoService;->notePowerInfoBatteryState(II)V

    .line 1014
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1017
    :cond_3
    :try_start_3
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1003
    .end local v7    # "onBattery":Z
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1014
    .restart local v7    # "onBattery":Z
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

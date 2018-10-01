.class final Lcom/android/server/BatteryService$CheckForShutdown;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForShutdown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/server/BatteryService$CheckForShutdown;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$CheckForShutdown;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 907
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 908
    return-void
.end method

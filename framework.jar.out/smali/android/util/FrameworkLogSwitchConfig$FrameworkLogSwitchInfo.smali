.class Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;
.super Ljava/lang/Object;
.source "FrameworkLogSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/FrameworkLogSwitchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameworkLogSwitchInfo"
.end annotation


# instance fields
.field private debug_switch:Z

.field private flow_switch:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "module_tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Landroid/util/FrameworkLogSwitchConfig;->FWK_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z

    .line 32
    sget-boolean v0, Landroid/util/FrameworkLogSwitchConfig;->FWK_FLOW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z

    .line 34
    return-void

    :cond_3
    move v0, v1

    .line 29
    goto :goto_0
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "debug"    # Z
    .param p2, "flow"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z

    .line 25
    iput-boolean p2, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z

    .line 26
    return-void
.end method

.method static synthetic access$000(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    .prologue
    .line 19
    iget-boolean v0, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z

    return v0
.end method

.method static synthetic access$002(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z

    return p1
.end method

.method static synthetic access$100(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    .prologue
    .line 19
    iget-boolean v0, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z

    return v0
.end method

.method static synthetic access$102(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z

    return p1
.end method


# virtual methods
.method public isDebug_switch()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z

    return v0
.end method

.method public isFlow_switch()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z

    return v0
.end method

.method public setDebug_switch(Z)V
    .locals 0
    .param p1, "debug_switch"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z

    .line 40
    return-void
.end method

.method public setFlow_switch(Z)V
    .locals 0
    .param p1, "info_switch"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z

    .line 46
    return-void
.end method

.class public Landroid/util/FrameworkLogSwitchConfig;
.super Ljava/lang/Object;
.source "FrameworkLogSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/FrameworkLogSwitchConfig$1;,
        Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;,
        Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;
    }
.end annotation


# static fields
.field public static FWK_DEBUG:Z

.field public static FWK_FLOW:Z

.field public static FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 9
    sget-boolean v6, Landroid/util/Log;->HWLog:Z

    if-nez v6, :cond_0

    sget-boolean v6, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v6, :cond_3

    sget-object v6, Landroid/util/FrameworkTagConstant;->FWK_MODULE_TAG:[Ljava/lang/String;

    aget-object v6, v6, v7

    const/4 v9, 0x3

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    move v6, v8

    :goto_0
    sput-boolean v6, Landroid/util/FrameworkLogSwitchConfig;->FWK_DEBUG:Z

    .line 11
    sget-boolean v6, Landroid/util/Log;->HWINFO:Z

    if-nez v6, :cond_1

    sget-boolean v6, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v6, :cond_2

    sget-object v6, Landroid/util/FrameworkTagConstant;->FWK_MODULE_TAG:[Ljava/lang/String;

    aget-object v6, v6, v7

    const/4 v9, 0x4

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    sput-boolean v7, Landroid/util/FrameworkLogSwitchConfig;->FWK_FLOW:Z

    .line 14
    const/16 v6, 0x11

    new-array v6, v6, [Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    sput-object v6, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "i":I
    sget-object v0, Landroid/util/FrameworkTagConstant;->FWK_MODULE_TAG:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 56
    .local v5, "tag":Ljava/lang/String;
    sget-object v6, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v7, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    invoke-direct {v7, v5}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v2

    .line 55
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 9
    goto :goto_0

    .line 58
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z
    .locals 4
    .param p0, "module_tag"    # I
    .param p1, "log_switch"    # Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    .prologue
    const/4 v1, 0x0

    .line 62
    div-int/lit8 v0, p0, 0x64

    .line 63
    .local v0, "module_index":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    .line 64
    sget-object v2, Landroid/util/FrameworkLogSwitchConfig$1;->$SwitchMap$android$util$FrameworkLogSwitchConfig$LOG_SWITCH:[I

    invoke-virtual {p1}, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 66
    :pswitch_0
    sget-object v1, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    aget-object v1, v1, v0

    # getter for: Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z
    invoke-static {v1}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->access$000(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;)Z

    move-result v1

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v1, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    aget-object v1, v1, v0

    # getter for: Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z
    invoke-static {v1}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->access$100(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;)Z

    move-result v1

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setModuleLogSwitchOFF(I)Z
    .locals 3
    .param p0, "module_tag"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    div-int/lit8 v0, p0, 0x64

    .line 88
    .local v0, "module_index":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    .line 89
    sget-object v2, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    aget-object v2, v2, v0

    # setter for: Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z
    invoke-static {v2, v1}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->access$002(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;Z)Z

    .line 90
    sget-object v2, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    aget-object v2, v2, v0

    # setter for: Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z
    invoke-static {v2, v1}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->access$102(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;Z)Z

    .line 91
    const/4 v1, 0x1

    .line 93
    :cond_0
    return v1
.end method

.method public static setModuleLogSwitchON(I)Z
    .locals 3
    .param p0, "module_tag"    # I

    .prologue
    const/4 v1, 0x1

    .line 77
    div-int/lit8 v0, p0, 0x64

    .line 78
    .local v0, "module_index":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    .line 79
    sget-object v2, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    aget-object v2, v2, v0

    # setter for: Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->debug_switch:Z
    invoke-static {v2, v1}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->access$002(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;Z)Z

    .line 80
    sget-object v2, Landroid/util/FrameworkLogSwitchConfig;->FwkLogSwitchArray:[Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;

    aget-object v2, v2, v0

    # setter for: Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->flow_switch:Z
    invoke-static {v2, v1}, Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;->access$102(Landroid/util/FrameworkLogSwitchConfig$FrameworkLogSwitchInfo;Z)Z

    .line 83
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public final enum Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;
.super Ljava/lang/Enum;
.source "FrameworkLogSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/FrameworkLogSwitchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_SWITCH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

.field public static final enum DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

.field public static final enum FLOW:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    new-instance v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    const-string v1, "FLOW"

    invoke-direct {v0, v1, v3}, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->FLOW:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    sget-object v1, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->FLOW:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    aput-object v1, v0, v3

    sput-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->$VALUES:[Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    return-object v0
.end method

.method public static values()[Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->$VALUES:[Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-virtual {v0}, [Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    return-object v0
.end method

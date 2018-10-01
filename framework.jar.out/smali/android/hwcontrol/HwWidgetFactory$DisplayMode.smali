.class public final enum Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
.super Ljava/lang/Enum;
.source "HwWidgetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hwcontrol/HwWidgetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hwcontrol/HwWidgetFactory$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

.field public static final enum Large:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

.field public static final enum Medium:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

.field public static final enum Normal:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

.field public static final enum Small:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Normal:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    new-instance v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    const-string v1, "Small"

    invoke-direct {v0, v1, v3}, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Small:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    new-instance v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    const-string v1, "Medium"

    invoke-direct {v0, v1, v4}, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Medium:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    new-instance v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    const-string v1, "Large"

    invoke-direct {v0, v1, v5}, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Large:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    sget-object v1, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Normal:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Small:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Medium:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Large:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    aput-object v1, v0, v5

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->$VALUES:[Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    return-object v0
.end method

.method public static values()[Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->$VALUES:[Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    invoke-virtual {v0}, [Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    return-object v0
.end method

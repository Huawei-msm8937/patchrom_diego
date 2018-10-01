.class public Landroid/content/pm/ActivityInfoExInner;
.super Ljava/lang/Object;
.source "ActivityInfoExInner.java"


# static fields
.field public static final CONFIG_DENSITY_SCALE:I = 0x20000

.field public static final CONFIG_HWTHEME:I = 0x8000

.field static final CONFIG_NATIVE_BITS:[I

.field public static final CONFIG_SIMPLEUI:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfoExInner;->CONFIG_NATIVE_BITS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
        0x0
        0x8000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityInfoConfigToNative(I)I
    .locals 3
    .param p0, "input"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "output":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfoExInner;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 55
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 56
    sget-object v2, Landroid/content/pm/ActivityInfoExInner;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return v1
.end method

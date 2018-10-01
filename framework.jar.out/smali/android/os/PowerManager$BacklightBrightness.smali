.class public Landroid/os/PowerManager$BacklightBrightness;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BacklightBrightness"
.end annotation


# static fields
.field public static final MAX_BRIGHTNESS:I = 0xff

.field public static final MIN_BRIGHTNESS:I


# instance fields
.field public brightness:I

.field public level:I

.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    .line 867
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    .line 868
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Landroid/os/PowerManager$BacklightBrightness;->level:I

    .line 869
    iput p1, p0, Landroid/os/PowerManager$BacklightBrightness;->brightness:I

    .line 870
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "min"    # I
    .param p3, "level"    # I

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput p1, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    .line 860
    iput p2, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    .line 861
    iput p3, p0, Landroid/os/PowerManager$BacklightBrightness;->level:I

    .line 862
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$BacklightBrightness;->brightness:I

    .line 863
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 873
    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->level:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->level:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->brightness:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    iget v1, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    if-lt v0, v1, :cond_1

    .line 878
    :cond_0
    const/4 v0, 0x0

    .line 880
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateBacklightBrightness(I)Z
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    const/4 v1, 0x0

    .line 884
    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    .line 885
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    .line 886
    and-int/lit16 v2, p1, 0xff

    iput v2, p0, Landroid/os/PowerManager$BacklightBrightness;->level:I

    .line 887
    iput p1, p0, Landroid/os/PowerManager$BacklightBrightness;->brightness:I

    .line 888
    invoke-virtual {p0}, Landroid/os/PowerManager$BacklightBrightness;->isValid()Z

    move-result v0

    .line 889
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 890
    const v2, 0x7fffffff

    iput v2, p0, Landroid/os/PowerManager$BacklightBrightness;->max:I

    .line 891
    iput v1, p0, Landroid/os/PowerManager$BacklightBrightness;->min:I

    .line 895
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
